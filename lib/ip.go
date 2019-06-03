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
	"regexp"
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

		_, body, errs := gorequest.New().Get(url).Set("User-Agent", UserAgents()[index]).End()

		if errs != nil {
			fmt.Println(errs)
		}

		dom, err := goquery.NewDocumentFromReader(strings.NewReader(decoderConvert("utf-8", body)))

		if err != nil {
			fmt.Println(err)
		}

		dom.Find(".table tbody tr").Each(func(i int, context *goquery.Selection) {
			ss := context.Find("td").Eq(1).Text()
			sss := context.Find("td").Eq(2).Text()
			ssssss := context.Find("td").Eq(3).Text()
			ssss := context.Find("td").Eq(4).Text()
			sssss := context.Find("td").Eq(5).Text()

			if QueryIp(ss+":"+sss) == false {
				if ssssss == "高匿" {
					Insert(ss+":"+sss, strings.ToLower(ssss), sssss)
				}
			}

		})
	}

}

// 获取西祠免费代理IP
func GetXiCi() {
	for i := 1; i <= 2; i++ {

		url := "https://www.xicidaili.com/nn/" + strconv.Itoa(i) + "/"
		rand.Seed(time.Now().UnixNano())
		index := rand.Intn(len(userAgents))

		_, body, errs := gorequest.New().Get(url).Set("User-Agent", UserAgents()[index]).End()

		if errs != nil {
			fmt.Println(errs)
		}

		dom, err := goquery.NewDocumentFromReader(strings.NewReader(decoderConvert("utf-8", body)))

		if err != nil {
			fmt.Println(err)
		}

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

// 获取快速免费代理IP
func GetKuaiSu() {
	for i := 1; i <= 10; i++ {

		url := "http://www.superfastip.com/welcome/freeip/" + strconv.Itoa(i)
		rand.Seed(time.Now().UnixNano())
		index := rand.Intn(len(userAgents))

		_, body, errs := gorequest.New().Get(url).Set("User-Agent", UserAgents()[index]).End()

		if errs != nil {
			fmt.Println(errs)
		}

		dom, err := goquery.NewDocumentFromReader(strings.NewReader(decoderConvert("utf-8", body)))

		if err != nil {
			fmt.Println(err)
		}

		dom.Find(".table tbody tr").Each(func(i int, context *goquery.Selection) {
			ss := context.Find("td").Eq(0).Text()
			sss := context.Find("td").Eq(1).Text()
			ssss := context.Find("td").Eq(3).Text()

			if QueryIp(ss+":"+sss) == false {
				Insert(ss+":"+sss, strings.ToLower(ssss), "")
			}

		})
	}
}

// 获取全网代理ip
func GetGouBanJia() {

	url := "http://www.goubanjia.com/"
	rand.Seed(time.Now().UnixNano())
	index := rand.Intn(len(userAgents))

	_, body, errs := gorequest.New().Get(url).Set("User-Agent", UserAgents()[index]).End()

	if errs != nil {
		fmt.Println(errs)
	}

	dom, err := goquery.NewDocumentFromReader(strings.NewReader(decoderConvert("utf-8", body)))

	if err != nil {
		fmt.Println(err)
	}

	dom.Find(".table tbody tr").Each(func(_ int, context *goquery.Selection) {
		sf, _ := context.Find(".ip").Html()
		tee := regexp.MustCompile("<pstyle=\"display:none;\">.?.?</p>").ReplaceAllString(strings.Replace(sf, " ", "", -1), "")
		re, _ := regexp.Compile("\\<[\\S\\s]+?\\>")
		ss := re.ReplaceAllString(tee, "")
		sss := context.Find("td:nth-child(3) > a").Text()
		ssss := context.Find("td:nth-child(2) > a").Text()
		if ssss == "高匿" && QueryIp(ss) == false {
			Insert(ss, strings.ToLower(sss), "")
		}
	})
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
			//fmt.Println("删除：", proxyAddr)
			DelIp(ips[i].Ip)
		}

	}

}
