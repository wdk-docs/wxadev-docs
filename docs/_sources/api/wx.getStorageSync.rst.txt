:wxapi:`wx.getStorageSync`
===============================

.. function:: wx.getStorageSync(string key)

  :func:`wx.getStorage` 的同步版本

  :param string key: 本地缓存中指定的 key
  :returns:

    - **any** *data* - key对应的内容

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
