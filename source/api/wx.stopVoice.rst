:wxapi:`wx.stopVoice`
============================================

.. function:: wx.stopVoice({[success][,fail][,complete]})

  .. deprecated:: 1.6.0 请使用 :func:`wx.createInnerAudioContext` 代替

  结束播放语音。


  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code:: js

      wx.startRecord({
        success(res) {
          const tempFilePath = res.tempFilePath
          wx.playVoice({
            filePath: tempFilePath,
          })

          setTimeout(() => { wx.stopVoice() }, 5000)
        }
      })
