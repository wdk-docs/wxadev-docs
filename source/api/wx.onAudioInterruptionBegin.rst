:wxapi:`wx.onAudioInterruptionBegin`
===========================================

.. function:: wx.onAudioInterruptionBegin(function callback)

   .. versionadded:: 2.6.2  低版本需做 :ref:`compatibility` 。

   监听音频因为受到系统占用而被中断开始事件。以下场景会触发此事件：闹钟、电话、FaceTime 通话、微信语音聊天、微信视频聊天。此事件触发后，小程序内所有音频会暂停。

   :param function callback: 音频因为受到系统占用而被中断开始事件的回调函数
