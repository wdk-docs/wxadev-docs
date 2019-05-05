:wxapi:`wx.getStorage`
==============================

.. function:: wx.getStorage({key, [success][ ,fail][ ,complete]})

  从本地缓存中异步获取指定 key 的内容

  :param string key: 本地缓存中指定的 key
  :param function success({data}): 接口调用成功的回调函数

    - **data**	*any* -	key对应的内容

  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.getStorage({
        key: 'key',
        success(res) {
          console.log(res.data)
        }
      })

    .. code::

      try {
        const value = wx.getStorageSync('key')
        if (value) {
          // Do something with return value
        }
      } catch (e) {
        // Do something when catch error
      }
