:wxapi:`wx.saveVideoToPhotosAlbum`
============================================

.. function:: wx.saveVideoToPhotosAlbum({stringfilePath[,success][,fail][,complete]})

  .. versionadded:: 1.2.0 低版本需做 :ref:`compatibility` 。

  调用前需要 :ref:`authorize` :data:`scope.writePhotosAlbum`

  :label: 保存视频到系统相册。支持mp4视频格式。
  :param stringfilePath:	视频文件路径，可以是临时文件路径也可以是永久文件路径
  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
  :示例:

    .. code::

      wx.saveVideoToPhotosAlbum({
        filePath: 'wxfile://xxx',
        success(res) {
          console.log(res.errMsg)
        }
      })
