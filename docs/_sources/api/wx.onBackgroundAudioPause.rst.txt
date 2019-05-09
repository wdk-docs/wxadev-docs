:orphan:

:wxapi:`wx.onBackgroundAudioPause`
========================================


.. function:: wx.onAudioInterruptionBegin(function callback)

基础库 2.6.2 开始支持，低版本需做 :ref:`compatibility` 。

监听音频因为受到系统占用而被中断开始事件。以下场景会触发此事件：闹钟、电话、FaceTime 通话、微信语音聊天、微信视频聊天。此事件触发后，小程序内所有音频会暂停。

参数
function callback
音频因为受到系统占用而被中断开始事件的回调函数
