/**********************************************
** @Des: 主程序
** @Author: Rain
** @Date:   2019/05/02 21:27
***********************************************/
package main

import (
	"fmt"
	"ip/getter"
	"ip/lib"
	"ip/models"
	"log"
	"runtime"
	"sync"
	"time"
)

func main() {
	runtime.GOMAXPROCS(runtime.NumCPU())
	ipChan := make(chan *models.IP, 2000)

	go func() {
		for {
			fmt.Println("开始校验ip")
			lib.Check()
			time.Sleep(5 * time.Millisecond)
		}
	}()

	for {
		go run(ipChan)
		time.Sleep(10 * time.Minute)
	}
}

func run(ipChan chan<- *models.IP) {

	var wg sync.WaitGroup

	var ips = []func() []*models.IP{
		getter.GetIp,
		getter.Get7yip,
		getter.GetKD,
		getter.GetGouBanJia,
		getter.GetNiMaDaiLi,
	}
	for _, f := range ips {
		wg.Add(1)
		go func(f func() []*models.IP) {
			temp := f()
			for _, v := range temp {
				lib.Insert(v.Ip, v.Port, v.Protocol, v.Area)
				ipChan <- v
			}
			defer wg.Done()
		}(f)
	}
	wg.Wait()
	log.Println("所有采集完成.")
}
