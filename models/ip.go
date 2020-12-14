/**********************************************
** @Des:
** @Author: Rain
** @Date:   2019/4/30 9:24
***********************************************/

package models

type IP struct {
	Ip       string `xorm:"NOT NULL" json:"ip"`
	Port     string `json:"port"`
	Protocol string `json:"protocol"`
	Area     string `json:"area"`
}

func NewIP() *IP {
	return &IP{

	}
}