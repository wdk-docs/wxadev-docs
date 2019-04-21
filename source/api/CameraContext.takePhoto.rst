:wxapi:`CameraContext.takePhoto`
============================================

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
