:wxapi:`wx.removeStorageSync`
==================================

.. function:: wx.removeStorageSync(key)

  :func:`wx.removeStorage` 的同步版本

  :param string key: 本地缓存中指定的 key
  :示例:

    .. code::

      wx.removeStorage({
        key: 'key',
        success(res) {
          console.log(res)
        }
      })

    .. code::

      try {
        wx.removeStorageSync('key')
      } catch (e) {
        // Do something when catch error
      }
