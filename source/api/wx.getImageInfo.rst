:wxapi:`wx.getImageInfo`
============================================

.. function:: wx.getImageInfo({src[,success][, fail][, complete]})

  :label: 获取图片信息。网络图片需先配置download域名才能生效。
  :param string src: 图片的路径，可以是相对路径、临时文件路径、存储文件路径、网络图片路径
  :param function success({width,height,path,orientation,type}):	接口调用成功的回调函数

    - **width** (*number*) -	图片原始宽度，单位px。不考虑旋转。
    - **height** (*number*) -	图片原始高度，单位px。不考虑旋转。
    - **path** (*string*) -	图片的本地路径
    - **orientation** (*string*) -	拍照时设备方向	1.9.90

      - *up*	默认方向（手机横持拍照），对应 Exif 中的 1。或无 orientation 信息。
      - *up-mirrored*	同 up，但镜像翻转，对应 Exif 中的 2
      - *down*	旋转180度，对应 Exif 中的 3
      - *down-mirrored*	同 down，但镜像翻转，对应 Exif 中的 4
      - *left-mirrored*	同 left，但镜像翻转，对应 Exif 中的 5
      - *right*	顺时针旋转90度，对应 Exif 中的 6
      - *right-mirrored*	同 right，但镜像翻转，对应 Exif 中的 7
      - *left*	逆时针旋转90度，对应 Exif 中的 8

    - **type** (*string*) -	图片格式	1.9.90

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    在开发者工具中预览效果

    .. code::

      wx.getImageInfo({
        src: 'images/a.jpg',
        success(res) {
          console.log(res.width)
          console.log(res.height)
        }
      })

      wx.chooseImage({
        success(res) {
          wx.getImageInfo({
            src: res.tempFilePaths[0],
            success(res) {
              console.log(res.width)
              console.log(res.height)
            }
          })
        }
      })

