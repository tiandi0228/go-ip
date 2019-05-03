/**********************************************
** @Des:
** @Author: Rain
** @Date:   2019/05/02 21:40
***********************************************/

package lib

import (
	db "../database"
	"../models"
	"fmt"
)

// 添加ip
func Insert(ipAddr string, protocol string, area string) {

	ip := models.IP{}

	ip.Ip = ipAddr
	ip.Protocol = protocol
	ip.Area = area

	db.Orm.Table("ip").Insert(&ip)

}

func QueryIp(ipAddr string) bool {

	ip := models.IP{}

	res, err := db.Orm.Table("ip").Where("ip = ?", ipAddr).Get(&ip)

	if err != nil {
		fmt.Println(err)
	}

	flag := false

	if res == true {
		flag = true
	}

	return flag
}

// 查询ip列表
func QueryList() []models.IP {

	var ips []models.IP

	err := db.Orm.Table("ip").Find(&ips)

	if err != nil {
		fmt.Println(err)
	}

	return ips

}

// 删除ip
func DelIp(ip string) {

	db.Orm.Query("delete from ip where ip = ?", ip)
}
