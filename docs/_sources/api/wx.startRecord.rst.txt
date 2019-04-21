:wxapi:`wx.startRecord`
============================================

.. function:: wx.startRecord(Object object)

  调用前需要 用户授权 scope.record

  .. deprecated :: 1.6.0 请使用 :func:`wx.getRecorderManager` 代替

开始录音。当主动调用 wx.stopRecord，或者录音超过1分钟时自动结束录音。当用户离开小程序时，此接口无法调用。

参数
Object object
属性	类型	默认值	必填	说明
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.success 回调函数
参数
Object res
属性	类型	说明
tempFilePath	string	录音文件的临时路径

示例代码

.. code::

  wx.startRecord({
    success(res) {
      const tempFilePath = res.tempFilePath
    }
  })
  setTimeout(function () {
    wx.stopRecord() // 结束录音
  }, 10000)