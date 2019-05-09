:wxapi:`wx.setInnerAudioOption`
============================================

.. function:: wx.setInnerAudioOption({[mixWithOther][,obeyMuteSwitch][,success][,fail][,complete]})

   .. versionadded:: 2.3.0 低版本需做 :ref:`compatibility` 。
 
   :label: 设置 :class:`InnerAudioContext` 的播放选项。设置之后对当前小程序全局生效。
 
   :param boolean mixWithOther:	是否与其他音频混播，设置为 true 之后，不会终止其他应用或微信内的音乐
   :param boolean obeyMuteSwitch:	（仅在 iOS 生效）是否遵循静音开关，设置为 false 之后，即使是在静音模式下，也能播放声音
   :param function success:	接口调用成功的回调函数
   :param function fail:	接口调用失败的回调函数
   :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
