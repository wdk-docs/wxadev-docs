:wxapi:`wx.playVoice`
==========================


.. function:: wx.playVoice({filePath[,duration][,success][,fail][,complete]})

  .. deprecated:: 1.6.0 请使用 :class:`wx.createInnerAudioContext` 代替

  :lable: 开始播放语音。同时只允许一个语音文件正在播放，如果前一个语音文件还没播放完，将中断前一个语音播放。


  :param funcstringtion filePath:	需要播放的语音文件的文件路径
  :param number duration:	``60`` 指定录音时长，到达指定的录音时长后会自动停止录音，单位：秒	1.6.0
  :param function success:	接口调用成功的回调函数
  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.startRecord({
        success(res) {
          const tempFilePath = res.tempFilePath
          wx.playVoice({
            filePath: tempFilePath,
            complete() { }
          })
        }
      })
