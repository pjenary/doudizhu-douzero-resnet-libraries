// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04
Page({

  onLoad: function () {
    //叫牌评估
    this.httpget('getWinrate', '51245', '4', '', '345566689TTJQKAA222X', '');

    //牌局创建
    this.httpget('initCard', '51245', '0', '0', '345566689TTJQKAA222X', '46T');

    //获取最佳出牌
    this.httpget('getCard', '51245', '0', '', '', '');

  },

  httpget: function (item_id, code_, cid_, play_, card1_, card2_) {
    wx.request({
      url: 'http://127.0.0.1:8000/' + item_id,
      data: {
        code: code_,
        cid: cid_,
        play: play_,
        card1: card1_,
        card2: card2_
      },

      success: (res) => {
        console.log(res.data)
      },

      fail: (err) => {
        console.error(err);
      }

    });
  },
})