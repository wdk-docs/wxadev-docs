:wxapi:`wx.pauseVoice`
=========================

.. function:: wx.pauseVoice({[success][,fail][,complete]})

  .. deprecated:: 1.6.0 请使用 :class:`wx.createInnerAudioContext` 代替

  :label: 暂停正在播放的语音。再次调用 wx.playVoice 播放同一个文件时，会从暂停处开始播放。如果想从头开始播放，需要先调用 wx.stopVoice。


  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.startRecord({
        success(res) {
          const tempFilePath = res.tempFilePath
          wx.playVoice({
            filePath: tempFilePath
          })

          setTimeout(() => { wx.pauseVoice() }, 5000)
        }
      })
