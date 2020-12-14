/**********************************************
** @Des: ip采集
** @Author: Rain
** @Date:   2019/05/02 21:27
***********************************************/

package lib

import (
	"github.com/parnurzeal/gorequest"
	"math/rand"
	"time"
)

// 校验代理ip可用性
func Check() {

	ips := QueryList()

	rand.Seed(time.Now().UnixNano())
	index := rand.Intn(len(UserAgents()))

	for i := 0; i <= (len(ips) - 1); i++ {

		url := "http://httpbin.org/get"

		proxyAddr := ips[i].Protocol + "://" + ips[i].Ip + ":" + ips[i].Port

		_, _, errs := gorequest.New().Proxy(proxyAddr).Get(url).Set("User-Agent", UserAgents()[index]).Timeout(6 * time.Second).End()

		if errs != nil {
			//fmt.Println("删除：", proxyAddr)
			DelIp(ips[i].Ip, ips[i].Port)
		}

	}

}
