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

// 获取代理ip
func GetIp() (result []*models.IP) {
	fmt.Println("采集IP - 代理ip")
	for i := 1; i <= 3; i++ {

		time.Sleep(5 * time.Second)

		url := "http://ip.jiangxianli.com/?page=" + strconv.Itoa(i) + "&country=中国"
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

		dom.Find(".layui-table tbody tr").Each(func(i int, context *goquery.Selection) {
			ip := context.Find("td").Eq(0).Text()
			port := context.Find("td").Eq(1).Text()
			ssssss := context.Find("td").Eq(2).Text()
			protocol := context.Find("td").Eq(3).Text()
			area := context.Find("td").Eq(4).Text()
			if ssssss == "高匿" && lib.QueryIp(ip, port) == false {
				//lib.Insert(ip, port, strings.ToLower(protocol), area)
				IP := models.NewIP()
				IP.Ip = ip
				IP.Port = port
				IP.Protocol = strings.ToLower(protocol)
				IP.Area = area

				result = append(result, IP)
			}
		})
	}
	return
}
