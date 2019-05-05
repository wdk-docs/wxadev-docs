:wxapi:`wx.getStorageInfoSync`
==========================================

.. function:: wx.getStorageInfoSync()

  :func:`wx.getStorageInfo` 的同步版本

  :rtype: object
  :returns:

    - **keys**	*Array.<string>* -	当前 storage 中所有的 key
    - **currentSize**	*number* -	当前占用的空间大小, 单位 KB
    - **limitSize**	*number* -	限制的空间大小，单位 KB

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