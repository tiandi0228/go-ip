/**********************************************
** @Des:
** @Author: Rain
** @Date:   2019/05/02 21:27
***********************************************/

package lib

import (
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"github.com/axgle/mahonia"
	"github.com/parnurzeal/gorequest"
	"math/rand"
	"net/http"
	"strconv"
	"strings"
	"time"
)

func decoderConvert(name string, body string) string {
	return mahonia.NewDecoder(name).ConvertString(body)
}

// 获取代理ip
func GetIp() {

	for i := 1; i <= 3; i++ {

		time.Sleep(5 * time.Second)
		url := "http://ip.jiangxianli.com/?page=" + strconv.Itoa(i)
		rand.Seed(time.Now().UnixNano())
		index := rand.Intn(len(userAgents))
		request, _ := http.NewRequest("GET", url, nil)
		request.Header.Set("User-Agent", userAgents[index])

		cli1 := &http.Client{}
		response, err := cli1.Do(request)
		if err != nil {
			fmt.Println(err)
		}

		dom, _ := goquery.NewDocumentFromReader(response.Body)

		dom.Find(".table tbody tr").Each(func(i int, context *goquery.Selection) {
			ss := context.Find("td").Eq(1).Text()
			sss := context.Find("td").Eq(2).Text()
			ssssss := context.Find("td").Eq(3).Text()
			ssss := context.Find("td").Eq(4).Text()
			sssss := context.Find("td").Eq(5).Text()

			if ssssss == "高匿" {
				if QueryIp(ss+":"+sss) == false {
					GetXiCi(strings.ToLower(ssss) + "://" + ss + ":" + sss)
					Insert(ss+":"+sss, strings.ToLower(ssss), sssss)
				}
			}

		})
	}

}

// 获取西祠免费代理IP
func GetXiCi(ip string) {
	for i := 1; i <= 2; i++ {

		url := "https://www.xicidaili.com/nn/" + strconv.Itoa(i) + "/"
		rand.Seed(time.Now().UnixNano())
		index := rand.Intn(len(userAgents))

		_, body, _ := gorequest.New().Proxy(ip).Get(url).Set("User-Agent", UserAgents()[index]).End()

		dom, _ := goquery.NewDocumentFromReader(strings.NewReader(decoderConvert("utf-8", body)))

		dom.Find(".fl-table tbody tr").Each(func(i int, context *goquery.Selection) {
			ss := context.Find("td").Eq(1).Text()
			sss := context.Find("td").Eq(2).Text()
			ssss := context.Find("td").Eq(3).Text()
			sssss := context.Find("td").Eq(5).Text()

			if QueryIp(ss+":"+sss) == false {
				Insert(ss+":"+sss, strings.ToLower(ssss), sssss)
			}

		})
	}
}

// 校验代理ip可用性
func Check() {

	ips := QueryList()

	rand.Seed(time.Now().UnixNano())
	index := rand.Intn(len(UserAgents()))

	for i := 0; i <= (len(ips) - 1); i++ {

		url := "http://httpbin.org/get"

		proxyAddr := ips[i].Protocol + "://" + ips[i].Ip

		_, _, errs := gorequest.New().Proxy(proxyAddr).Get(url).Set("User-Agent", UserAgents()[index]).Timeout(6 * time.Second).End()

		if errs != nil {
			fmt.Println("删除：", proxyAddr)
			DelIp(ips[i].Ip)
		}

	}

}
