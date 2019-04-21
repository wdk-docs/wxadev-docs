:wxapi:`wx.chooseVideo`
============================================

.. function:: wx.chooseVideo({[sourceType][,compressed][,maxDuration][,camera][,success][,fail][,complete]})

  :label: 拍摄视频或从手机相册中选视频。
  :param Array.<string> sourceType:	['album', 'camera']	视频选择的来源

    - *album*	从相册选择视频
    - *camera*	使用相机拍摄视频

  :param boolean compressed:	``true`` 是否压缩所选择的视频文件	1.6.0
  :param number maxDuration:	``60``	拍摄视频最长拍摄时间，单位秒
  :param string camera:	``'back'``	默认拉起的是前置或者后置摄像头。部分 Android 手机下由于系统 ROM 不支持无法生效

    - *back*	默认拉起后置摄像头
    - *front*	默认拉起前置摄像头

  :param function success({tempFilePath,duration,size,height,width}):	接口调用成功的回调函数

    - **tempFilePath**	(*string*) -	选定视频的临时文件路径
    - **duration**	(*number*) -	选定视频的时间长度
    - **size**	(*number*) -	选定视频的数据量大小
    - **height**	(*number*) -	返回选定视频的高度
    - **width**	(*number*) -	返回选定视频的宽度

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.chooseVideo({
        sourceType: ['album', 'camera'],
        maxDuration: 60,
        camera: 'back',
        success(res) {
          console.log(res.tempFilePath)
        }
      })
