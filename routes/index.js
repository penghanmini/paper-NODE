var express = require('express');
var router = express.Router();
var mysql = require('./sqlUtil');

/* GET home page. */
router.post('/login',function (req,res) {
    console.log(req["body"]);
    res.send({
        data:req["body"],
        code: 200,
    })
    // var xhr = new XMLHttpRequest();
    // xhr.open("POST","http://192.168.3.18:8080/monitor-platform/login" , true);
    // xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    // xhr.onreadystatechange = function() {
    //     if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 304)) {
    //         return xhr.responseText;
    //     }
    // };
    // var data =  {
    //     account:'admin',
    //     password:'admin',
    // };
    // data = JSON.stringify(data);
    // console.log(data);
    // xhr.send(data);
})
//导航栏
router.get('/category', function(req, res) {
    const sql = 'SELECT * FROM category WHERE secondCate = 0';
    mysql.dbConnection(sql,[],function (err,data) {
        res.send({
            data: data,
            message: 'success',
            status: 0,
        });
    })
});
//收货地址
router.get('/address',function (req, res) {
    const sql = 'SELECT * FROM address WHERE category = 0';
    mysql.dbConnection(sql,[],function (err,data) {
        res.send({
            data: data,
            message: 'success',
            status: 0,
        });
    })
})
//走马灯
router.get('/carousel', function(req, res) {
    if(req.query.carouselType){
        const sql = 'SELECT * FROM carousellist WHERE belong = ' + req.query.carouselType;
        mysql.dbConnection(sql,[],function (err,data) {
            res.send({
                data: data,
                message: 'success',
                status: 0,
            });
        })
    }
    else{
        res.send({
            data: null,
            message: '未传入类别',
            status: 1,
        });
    }
});
//分类
router.get('/categoryList', function(req, res) {
    if(req.query.category){
        const sql = 'SELECT * FROM category WHERE category = "' + req.query.category + '" AND secondCate != 0';
        mysql.dbConnection(sql,[],function (err,data) {
            res.send({
                data: data,
                message: 'success',
                status: 0,
            });
        })
    }
    else{
        res.send({
            data: null,
            message: '类别为空',
            status: 1,
        });
    }
});
//商品详情
router.get('/productDetail',function (req, res) {
    if(req.query.id){
        const sql1 = 'select * from commodity where id = ' + req.query.id;
        mysql.dbConnection(sql1,[],function (err1,data1) {
            const sql2 = 'select * from detailimg where id = ' + req.query.id;
            mysql.dbConnection(sql2,[],function (err2,data2) {
                data1.imgUrl = JSON.stringify(data2);
                res.send({
                    data: {
                        data:data1[0],
                        imgUrl: data2,
                    },
                    message: 'success',
                    status: 0,
                })
            })
        })
    }
    else{
        res.send({
            data: null,
            message: '商品ID未空',
            status: 1,
        });
    }
})

//首页集市
router.get('/index/market',function (req, res) {
    const sql = 'SELECT * FROM smallimg WHERE category = "category_0" and categorydetail = 1';
    mysql.dbConnection(sql,[],function (err,data) {
        res.send({
            data: data,
            message: 'success',
            status: 0,
        });
    })
})
//首页新品
router.get('/index/newProject',function (req, res) {
    const sql = 'SELECT * FROM  commodity ORDER BY  RAND() LIMIT 4';
    mysql.dbConnection(sql,[],function (err,data) {
        res.send({
            data: data,
            message: 'success',
            status: 0,
        });
    })
})

//居家商品展示
router.get('/livingHome/goodsList',function (req, res) {
    const sql = 'SELECT * FROM  commodity WHERE category = "category_1" AND categorydetail = '+ req.query.type;
    mysql.dbConnection(sql,[],function (err,data) {
        res.send({
            data: data,
            message: 'success',
            status: 0,
        }); 
    })
})

// var fs = require("");
// var stat = fs.lstatSync("./js");
// if(stat.isDirectory()){
//
// }







module.exports = router;
