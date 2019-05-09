:wxapi:`CameraContext`
============================================

.. function:: wx.createCameraContext()

  .. versionadded:: 1.6.0 低版本需做 :doc:`/framework/compatibility` 。

  :label: 创建 camera 上下文 :class:`CameraContext` 对象。
  :return: :class:`CameraContext`

.. class:: CameraContext

  CameraContext 实例，可通过 :func:`wx.createCameraContext` 获取。

  cameraContext 与页面内唯一的 :ref:`<camera> <camera>` 组件绑定，操作对应的 :ref:`<camera> <camera>` 组件。

方法
--------

.. function:: CameraContext.takePhoto({[quality][,success][,fail][,complete]})

  :label: :class:`CameraContext` 实例拍摄照片

  :param string quality: 成像质量，合法值:

    - *high*: 高质量
    - *normal*: 普通质量(**默认值**)
    - *low*: 低质量

  :param function success({tempImagePath}):		接口调用成功的回调函数

    - **tempImagePath** (*string*) - 照片文件的临时路径，安卓是jpg图片格式，ios是png

  :param function fail:		接口调用失败的回调函数
  :param function complete:		接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: CameraContext.startRecord({[timeoutCallback][,success][,complete]})

  :label: :class:`CameraContext` 实例开始录像
  :param function timeoutCallback(res):	超过30s或页面 onHide 时会结束录像

    - **tempThumbPath** (*string*) - 封面图片文件的临时路径
    - **tempVideoPath** (*string*) - 视频的文件的临时路径

  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: CameraContext.stopRecord({[success][,fail][,complete]})

  :label: :class:`CameraContext` 实例结束录像
  :param function success({tempThumbPath,tempVideoPath}):	接口调用成功的回调函数

    - **tempThumbPath** (*string*) - 封面图片文件的临时路径
    - **tempVideoPath** (*string*) - 视频的文件的临时路径

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

示例代码
--------------

:download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/VBZ3Jim26zYu>`
