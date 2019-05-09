:orphan:

:wxapi:`wx.stopRecord`
============================================

.. function:: wx.stopRecord()

  .. deprecated:: 1.6.0 请使用 :func:`wx.getRecorderManager` 代替

  停止录音。

  :示例代码:

  .. code::

    wx.startRecord({
      success(res) {
        const tempFilePath = res.tempFilePath
      }
    })
    setTimeout(function () {
      wx.stopRecord() // 结束录音
    }, 10000)

