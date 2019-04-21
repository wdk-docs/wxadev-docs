:wxapi:`wx.saveImageToPhotosAlbum`
============================================

.. function:: wx.saveImageToPhotosAlbum({filePath[,success][, fail][, complete]})

  .. versionadded:: 1.2.0 低版本需做 :ref:`compatibility` 。

  调用前需要 :ref:`authorize` :data:`scope.writePhotosAlbum`

  :label: 保存图片到系统相册。

  :param string filePath:	图片文件路径，可以是临时文件路径或永久文件路径，不支持网络图片路径
  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.saveImageToPhotosAlbum({
        success(res) { }
      })
