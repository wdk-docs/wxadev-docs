:wxapi:`wx.getBackgroundAudioManager`
============================================

.. versionadded:: 1.2.0 开始支持，低版本需做兼容处理。

获取全局唯一的背景音频管理器。 小程序切入后台，如果音频处于播放状态，
可以继续播放。但是后台状态不能通过调用API操纵音频的播放状态。

从微信客户端6.7.2版本开始，若需要在小程序切后台后继续播放音频，
需要在 app.json 中配置 requiredBackgroundModes 属性。
开发版和体验版上可以直接生效，正式版还需通过审核。

返回值

BackgroundAudioManager