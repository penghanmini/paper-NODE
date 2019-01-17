const mysql = require("mysql");

// 数据库链接池
const dbpool={
    config: {
        host: "localhost",
        port: "3306",
        user: "root",
        password: "root",
        database: "mypaper"
    },
    dbConnection: function (sqlstr, sqlArr, fn){
        let pool=mysql.createPool(this.config);//创建连接池，传入config,返回链接对象
        // 获取链接对象
        pool.getConnection(function(err,connection){
            if(err){
                console.log(connection)
            }
            // 发送query
            connection.query(sqlstr, sqlArr, fn);
            //关闭链接
            connection.release();
        })
    }
}
module.exports = dbpool;