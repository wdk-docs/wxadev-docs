:wxapi:`wx.setStorageSync`
============================================

.. function:: wx.setStorageSync(key, data)

  :func:`wx.setStorage` 的同步版本

  :param string key: 本地缓存中指定的 key
  :param any data: 需要存储的内容。只支持原生类型、Date、及能够通过JSON.stringify序列化的对象。

  :示例代码:

    .. code::

      wx.setStorage({
        key: 'key',
        data: 'value'
      })

    .. code::

      try {
        wx.setStorageSync('key', 'value')
      } catch (e) { }
