var express = require('express');
var router = express.Router();
var mysql = require('./sqlUtil');

/* GET home page. */


router.get('/index/carousel', function(req, res) {
  const sql = 'SELECT * FROM carousellist WHERE belong = 1';
  mysql.dbConnection(sql,[],function (err,data) {
      res.send({
          data: data,
          message: 'success',
          status: 0,
      });
  })
});
router.get('/livingHome/carousel', function(req, res) {
    const sql = 'SELECT * FROM carousellist WHERE belong = 2';
    mysql.dbConnection(sql,[],function (err,data) {
        res.send({
            data: data,
            message: 'success',
            status: 0,
        });
    })
});
router.get('/shoeBag/carousel', function(req, res) {
    const sql = 'SELECT * FROM carousellist WHERE belong = 3';
    mysql.dbConnection(sql,[],function (err,data) {
        res.send({
            data: data,
            message: 'success',
            status: 0,
        });
    })
});

module.exports = router;