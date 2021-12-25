:wxapi:`BackgroundAudioManager ☁️ <BackgroundAudioManager>`
===================================================================

.. function:: wx.getBackgroundAudioManager

    .. versionadded:: 1.2.0 低版本需做 :ref:`compatibility` 。

    获取全局唯一的背景音频管理器。 小程序切入后台，如果音频处于播放状态，
    可以继续播放。但是后台状态不能通过调用API操纵音频的播放状态。

    从微信客户端6.7.2版本开始，若需要在小程序切后台后继续播放音频，
    需要在 :file:`app.json` 中配置 ``requiredBackgroundModes`` 属性。
    开发版和体验版上可以直接生效，正式版还需通过审核。

    :return: :class:`BackgroundAudioManager`

.. class:: BackgroundAudioManager

   BackgroundAudioManager 实例，可通过 :func:`wx.getBackgroundAudioManager` 获取。

属性
----------

.. attribute:: BackgroundAudioManager.src

  .. versionadded:: 2.2.3 开始支持 **云文件ID**

  音频的数据源。
  默认为空字符串，当设置了新的 ``src`` 时，会自动开始播放，目前支持的格式有:

      - m4a
      - aac
      - mp3
      - wav

  :rtype: string

.. attribute:: BackgroundAudioManager.startTime

  音频开始播放的位置(单位：s)。

  :rtype: number

.. attribute:: BackgroundAudioManager.title

  音频标题，用于原生音频播放器音频标题(必填)。原生音频播放器中的分享功能，分享出去的卡片标题，也将使用该值。

  :rtype: string

.. attribute:: BackgroundAudioManager.epname

  专辑名，原生音频播放器中的分享功能，分享出去的卡片简介，也将使用该值。

  :rtype: string

.. attribute:: BackgroundAudioManager.singer

  歌手名，原生音频播放器中的分享功能，分享出去的卡片简介，也将使用该值。

  :rtype: string

.. attribute:: BackgroundAudioManager.coverImgUrl

  封面图 URL，用于做原生音频播放器背景图。原生音频播放器中的分享功能，分享出去的卡片配图及背景也将使用该图。

  :rtype: string

.. attribute:: BackgroundAudioManager.webUrl

  页面链接，原生音频播放器中的分享功能，分享出去的卡片简介，也将使用该值。

  :rtype: string

.. attribute:: BackgroundAudioManager.protocol

  .. versionadded::  1.9.94 低版本需做 :ref:`compatibility` 。

  音频协议。默认值为 ``'http'``，设置 ``'hls'`` 可以支持播放 **HLS** 协议的直播音频。

  :rtype: string

.. attribute:: BackgroundAudioManager.duration

  当前音频的长度(单位：``s``)，只有在有合法 ``src`` 时返回。

  :rtype: number(只读)

.. attribute:: BackgroundAudioManager.currentTime

  当前音频的播放位置(单位：``s``)，只有在有合法 ``src`` 时返回。

  :rtype: number(只读)

.. attribute:: BackgroundAudioManager.paused

  当前是否暂停或停止。

  :rtype: boolean(只读)

.. attribute:: BackgroundAudioManager.buffered

  音频已缓冲的时间，仅保证当前播放时间点到此时间点内容已缓冲。

  :rtype: number(只读)

方法
------------

.. function:: BackgroundAudioManager.play()

  播放音乐

.. function:: BackgroundAudioManager.pause()

  暂停音乐

.. function:: BackgroundAudioManager.seek(currentTime)

  :param number currentTime: 跳转到指定位置

.. function:: BackgroundAudioManager.stop()

  停止音乐

.. function:: BackgroundAudioManager.onCanplay(callback)

  :param function callback: 监听背景音频进入可播放状态事件。但不保证后面可以流畅播放

.. function:: BackgroundAudioManager.onWaiting(callback)

  :param function callback: 监听音频加载中事件。当音频因为数据不足，需要停下来加载时会触发

.. function:: BackgroundAudioManager.onError(callback)

  :param function callback: 监听背景音频播放错误事件

.. function:: BackgroundAudioManager.onPlay(callback)

  :param function callback: 监听背景音频播放事件

.. function:: BackgroundAudioManager.onPause(callback)

  :param function callback: 监听背景音频暂停事件

.. function:: BackgroundAudioManager.onSeeking(callback)

  :param function callback: 监听背景音频开始跳转操作事件

.. function:: BackgroundAudioManager.onSeeked(callback)

  :param function callback: 监听背景音频完成跳转操作事件

.. function:: BackgroundAudioManager.onEnded(callback)

  :param function callback: 监听背景音频自然播放结束事件

.. function:: BackgroundAudioManager.onStop(callback)

  :param function callback: 监听背景音频停止事件

.. function:: BackgroundAudioManager.onTimeUpdate(callback)

  :param function callback: 监听背景音频播放进度更新事件

.. function:: BackgroundAudioManager.onNext(callback)

  :param function callback: 监听用户在系统音乐播放面板点击下一曲事件(仅iOS)

.. function:: BackgroundAudioManager.onPrev(callback)

  :param function callback: 监听用户在系统音乐播放面板点击上一曲事件(仅iOS)

示例代码
---------

.. code::

  const backgroundAudioManager = wx.getBackgroundAudioManager()

  backgroundAudioManager.title = '此时此刻'
  backgroundAudioManager.epname = '此时此刻'
  backgroundAudioManager.singer = '许巍'
  backgroundAudioManager.coverImgUrl = 'http://y.gtimg.cn/music/photo_new/T002R300x300M000003rsKF44GyaSk.jpg?max_age=2592000'
  // 设置了 src 之后会自动播放
  backgroundAudioManager.src = 'http://ws.stream.qqmusic.qq.com/M500001VfvsJ21xFqb.mp3?guid=ffffffff82def4af4b12b3cd9337d5e7&uin=346897220&vkey=6292F51E1E384E061FF02C31F716658E5C81F5594D561F2E88B854E81CAAB7806D5E4F103E55D33C16F3FAC506D1AB172DE8600B37E43FAD&fromtag=46'
