:wxapi:`wx.chooseImage`
============================================

.. function:: wx.chooseImage({[count][ ,sizeType][ ,sourceType][ ,success][ ,fail][ ,complete]})

  :label: 从本地相册选择图片或使用相机拍照。
  :param number count: ``9``	最多可以选择的图片张数
  :param Array.<string> sizeType:		``['original', 'compressed']`` 所选的图片的尺寸,合法值:

    - *original*	原图
    - *compressed*	压缩图

  :param Array.<string> sourceType:	``['album', 'camera']``	选择图片的来源,合法值:

    - *album*	从相册选图
    - *camera*	使用相机

  :param function success({tempFilePaths, tempFiles}):	接口调用成功的回调函数

    - **tempFilePaths**	(*Array.<string>*)	图片的本地临时文件路径列表
    - **tempFiles**	(*Array.<Object>*)	图片的本地临时文件列表	1.2.0

      - **path**	(*string*) -	本地临时文件路径
      - **size**	(*number*) -	本地临时文件大小，单位 B

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.chooseImage({
        count: 1,
        sizeType: ['original', 'compressed'],
        sourceType: ['album', 'camera'],
        success(res) {
          // tempFilePath可以作为img标签的src属性显示图片
          const tempFilePaths = res.tempFilePaths
        }
      })
