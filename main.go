package main

import (
	"./lib"
	"fmt"
	"time"
)

func timer1() {
	timer1 := time.NewTicker(6 * time.Second)
	for {
		select {
		case <-timer1.C:
			lib.Check()
		}
	}
}

func timer2() {
	timer2 := time.NewTicker(2 * time.Minute)
	for {
		select {
		case <-timer2.C:
			fmt.Println("采集IP")
			lib.GetIp()
			lib.GetXiCi()
			lib.GetKuaiSu()
			lib.GetGouBanJia()
		}
	}
}

func main() {
	go timer2()
	timer1()
}
