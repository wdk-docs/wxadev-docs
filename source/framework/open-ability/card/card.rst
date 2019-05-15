:wxfrwk:`卡券 <open-ability/card/card>`
================================================

说明
--------------

小程序卡券接口支持在小程序中领取/查看/使用公众号 AppId 创建的会员卡、票、券（含通用卡）。
更多使用方法可参考 `小程序&卡券打通 <card_app>`_

.. _card_app: https://mp.weixin.qq.com/cgi-bin/announce?action=getannouncement&key=1490190158&version=1&lang=zh_CN&platform=2

使用条件
--------------

目前只有认证小程序才能使用卡券接口，可参考 `指引 <renzheng>`_ 进行认证。

.. _renzheng: https://developers.weixin.qq.com/miniprogram/product/renzheng.html?t=19051021

接口
--------------

小程序内可以通过 :func:`wx.addCard` 接口给用户添加卡券。通过 :func:`wx.openCard` 让用户选择已有卡券。
