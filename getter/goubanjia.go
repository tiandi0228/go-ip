package getter

import (
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"github.com/parnurzeal/gorequest"
	"ip/lib"
	"ip/models"
	"ip/utils"
	"math/rand"
	"regexp"
	"strings"
	"time"
)

// 获取全网代理ip
func GetGouBanJia() (result []*models.IP) {
	fmt.Println("采集IP - 全网代理ip")

	url := "http://www.goubanjia.com/"
	rand.Seed(time.Now().UnixNano())
	index := rand.Intn(len(lib.UserAgents()))

	ips := lib.QueryList()
	proxyAddr := ""
	if len(ips) > 0 {
		proxyAddr = ips[rand.Intn(len(ips))].Protocol + "://" + ips[rand.Intn(len(ips))].Ip + ":" + ips[rand.Intn(len(ips))].Port
	}

	_, body, errs := gorequest.New().Proxy(proxyAddr).Get(url).Set("User-Agent", lib.UserAgents()[index]).Timeout(6 * time.Second).End()

	if errs != nil {
		fmt.Println(errs)
	}

	dom, err := goquery.NewDocumentFromReader(strings.NewReader(utils.DecoderConvert("utf-8", body)))

	if err != nil {
		fmt.Println(err)
	}

	dom.Find(".table tbody tr").Each(func(_ int, context *goquery.Selection) {
		sf, _ := context.Find(".ip").Html()
		tee := regexp.MustCompile("<pstyle=\"display:none;\">.?.?</p>").ReplaceAllString(strings.Replace(sf, " ", "", -1), "")
		re, _ := regexp.Compile("\\<[\\S\\s]+?\\>")
		ss := re.ReplaceAllString(tee, "")
		protocol := context.Find("td:nth-child(3) > a").Text()
		ssss := context.Find("td:nth-child(2) > a").Text()
		ip := strings.Split(ss, ":")[0]
		port := strings.Split(ss, ":")[1]
		if ssss == "高匿" && lib.QueryIp(ip, port) == false {
			//lib.Insert(ip, port, strings.ToLower(sss), "")
			IP := models.NewIP()
			IP.Ip = ip
			IP.Port = port
			IP.Protocol = strings.ToLower(protocol)
			IP.Area = ""

			result = append(result, IP)
		}
	})
	return
}
