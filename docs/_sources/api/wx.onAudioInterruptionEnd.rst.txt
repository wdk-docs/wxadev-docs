:wxapi:`wx.onAudioInterruptionEnd`
==============================================


.. function:: wx.onAudioInterruptionEnd(function callback)

基础库 2.6.2 开始支持，低版本需做 :ref:`compatibility` 。

监听音频中断结束事件。在收到 onAudioInterruptionBegin 事件之后，小程序内所有音频会暂停，收到此事件之后才可再次播放成功

参数
function callback
音频中断结束事件的回调函数