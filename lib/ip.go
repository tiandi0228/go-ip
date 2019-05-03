/**********************************************
** @Des:
** @Author: Rain
** @Date:   2019/05/02 21:27
***********************************************/

package lib

import (
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"github.com/parnurzeal/gorequest"
	"math/rand"
	"net/http"
	"strconv"
	"strings"
	"time"
)

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
			ssss := context.Find("td").Eq(4).Text()
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

		_, _, errs := gorequest.New().Proxy(ips[i].Ip).Get(url).Set("User-Agent", UserAgents()[index]).Timeout(6 * time.Second).End()

		if errs != nil {
			fmt.Println("删除：", ips[i].Ip)
			DelIp(ips[i].Ip)
		}

	}

}
