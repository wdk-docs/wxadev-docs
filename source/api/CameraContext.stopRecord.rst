:wxapi:`CameraContext.stopRecord`
============================================

.. function:: CameraContext.stopRecord({[success][,fail][,complete]})

  :label: :class:`CameraContext` 实例结束录像
  :param function success({tempThumbPath,tempVideoPath}):	接口调用成功的回调函数

    - **tempThumbPath** (*string*) - 封面图片文件的临时路径
    - **tempVideoPath** (*string*) - 视频的文件的临时路径

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
