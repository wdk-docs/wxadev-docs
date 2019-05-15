:wxapi:`AuthSetting`
============================================

用户授权设置信息，详情参考权限

属性
--------

.. data:: scope.userInfo

  是否授权用户信息

  - **type** - boolean
  - **api** - :func:`wx.getUserInfo`

.. data:: scope.userLocation

  是否授权地理位置，对应接口

  - **type** - boolean
  - **api** - :func:`wx.getLocation` , :func:`wx.chooseLocation`

.. data:: scope.address

  是否授权通讯地址

  - **type** - boolean
  - **api** - :func:`wx.chooseAddress`

.. data:: scope.invoiceTitle

  是否授权发票抬头

  - **type** - boolean
  - **api** - :func:`wx.chooseInvoiceTitle`

.. data:: scope.invoice

  是否授权获取发票，对应接口

  - **type** - boolean
  - **api** - :func:`wx.chooseInvoice`

.. data:: scope.werun

  是否授权微信运动步数，对应接口

  - **type** - boolean
  - **api** - :func:`wx.getWeRunData`

.. data:: scope.record

  是否授权录音功能，对应接口

  - **type** - boolean
  - **api** - :func:`wx.startRecord`

.. data:: scope.writePhotosAlbum

  是否授权保存到相册

  - **type** - boolean
  - **api** - :func:`wx.saveImageToPhotosAlbum` , :func:`wx.saveVideoToPhotosAlbum`

.. data:: scope.camera

  是否授权摄像头，对应<:ref:`camera`> 组件

  - **type** - boolean

