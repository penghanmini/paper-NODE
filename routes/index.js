var express = require('express');
var router = express.Router();
var mysql = require('./sqlUtil');

/* GET home page. */

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
        console.log(sql);
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






module.exports = router;
