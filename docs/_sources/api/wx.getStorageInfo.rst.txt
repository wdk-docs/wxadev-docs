:wxapi:`wx.getStorageInfo`
===============================

.. function:: wx.getStorageInfo({[success][ ,fail][ ,complete]})

  异步获取当前 storage 的相关信息

  :param function success({keys,currentSize,limitSize}): 接口调用成功的回调函数

    - **keys**	*Array.<string>* -	当前 storage 中所有的 key
    - **currentSize**	*number* -	当前占用的空间大小, 单位 KB
    - **limitSize**	*number* -	限制的空间大小，单位 KB

  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
  :示例:

    .. code::

      wx.getStorageInfo({
        success(res) {
          console.log(res.keys)
          console.log(res.currentSize)
          console.log(res.limitSize)
        }
      })

    .. code::

      try {
        const res = wx.getStorageInfoSync()
        console.log(res.keys)
        console.log(res.currentSize)
        console.log(res.limitSize)
      } catch (e) {
        // Do something when catch error
      }
