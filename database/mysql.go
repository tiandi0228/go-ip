package database

import (
	_ "github.com/go-sql-driver/mysql"
	"github.com/go-xorm/xorm"
	"github.com/sirupsen/logrus"
)

var Orm *xorm.Engine
var logger = logrus.New()

func init() {
	var err error
	Orm, err = xorm.NewEngine("mysql", "root:Stz#0428!@tcp(sh-cynosdbmysql-grp-lxsrm2i8.sql.tencentcdb.com:27377)/ip?charset=utf8")
	Orm.ShowSQL(false)
	if err != nil {
		logger.Error(err.Error())
	}
}
