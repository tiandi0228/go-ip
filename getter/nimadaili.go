package getter

import (
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"github.com/parnurzeal/gorequest"
	"ip/lib"
	"ip/models"
	"ip/utils"
	"math/rand"
	"strconv"
	"strings"
	"time"
)

// 获取你妈代理ip
func GetNiMaDaiLi() (result []*models.IP) {
	fmt.Println("采集IP - 你妈代理ip")
	for i := 1; i < 10; i++ {

		url := "http://www.nimadaili.com/https/" + strconv.Itoa(i) + "/"
		rand.Seed(time.Now().UnixNano())
		index := rand.Intn(len(lib.UserAgents()))

		//ips := lib.QueryList()
		//proxyAddr := ""
		//if len(ips) > 0 {
		//	proxyAddr = ips[rand.Intn(len(ips))].Protocol + "://" + ips[rand.Intn(len(ips))].Ip + ":" + ips[rand.Intn(len(ips))].Port
		//}

		_, body, errs := gorequest.New().Get(url).Set("User-Agent", lib.UserAgents()[index]).Timeout(6 * time.Second).End()

		if errs != nil {
			fmt.Println(errs)
		}

		dom, err := goquery.NewDocumentFromReader(strings.NewReader(utils.DecoderConvert("utf-8", body)))

		if err != nil {
			fmt.Println(err)
		}

		dom.Find(".fl-table tbody tr").Each(func(_ int, context *goquery.Selection) {
			ip := context.Find("td").Eq(0).Text()
			ssss := context.Find("td").Eq(2).Text()
			area := context.Find("td").Eq(3).Text()
			if ssss == "高匿代理" && lib.QueryIp(strings.Split(ip, ":")[0], strings.Split(ip, ":")[1]) == false {
				//lib.Insert(ip, port, strings.ToLower(sss), "")
				IP := models.NewIP()
				IP.Ip = strings.Split(ip, ":")[0]
				IP.Port = strings.Split(ip, ":")[1]
				IP.Protocol = "https"
				IP.Area = area

				result = append(result, IP)
			}
		})
	}
	return
}
