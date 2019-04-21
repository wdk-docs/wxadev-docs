:wxapi:`CameraContext.startRecord`
============================================

.. function:: CameraContext.startRecord({[timeoutCallback][,success][,complete]})

  :label: :class:`CameraContext` 实例开始录像
  :param function timeoutCallback(res):	超过30s或页面 onHide 时会结束录像

    - **tempThumbPath** (*string*) - 封面图片文件的临时路径
    - **tempVideoPath** (*string*) - 视频的文件的临时路径

  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

