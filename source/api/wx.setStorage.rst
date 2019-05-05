:wxapi:`wx.setStorage`
============================================

.. function:: wx.setStorage({key, data[, success][ ,fail][ ,complete]})

  将数据存储在本地缓存中指定的 key 中。
  会覆盖掉原来该 key 对应的内容。数据存储生命周期跟小程序本身一致，即除用户主动删除或超过一定时间被自动清理，否则数据都一直可用。
  单个 key 允许存储的最大数据长度为 1MB，所有数据存储上限为 10MB。

  :param string key: 本地缓存中指定的 key
  :param any data: 需要存储的内容。只支持原生类型、Date、及能够通过JSON.stringify序列化的对象。
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
  :示例:

    .. code::

      wx.setStorage({
        key: 'key',
        data: 'value'
      })

    .. code::

      try {
        wx.setStorageSync('key', 'value')
      } catch (e) { }

