:wxapi:`InnerAudioContext ☁️ <InnerAudioContext>`
=====================================================

.. function:: wx.createInnerAudioContext()

   .. versionadded:: 1.6.0 低版本需做 :ref:`compatibility` 。

   创建内部 :ref:`audio` 上下文 :class:`InnerAudioContext` 对象。

   :return: :class:`InnerAudioContext`

.. class:: InnerAudioContext

   InnerAudioContext 实例，可通过 :func:`wx.createInnerAudioContext` 接口获取实例。

属性
--------

.. attribute:: InnerAudioContext.src

   :label: 音频资源的地址，用于直接播放
   :rtype: string

   .. versionadded:: 2.2.3 开始支持云文件ID

.. attribute:: InnerAudioContext.startTime

   :label: 开始播放的位置
   :rtype: number
   :unit: s(秒)
   :default: 0

.. attribute:: InnerAudioContext.autoplay

   :label: 是否自动开始播放
   :rtype: boolean
   :default: false

.. attribute:: InnerAudioContext.loop

   :label: 是否循环播放
   :rtype: boolean
   :default: false

.. attribute:: InnerAudioContext.obeyMuteSwitch

   :label: 是否遵循系统静音开关
   :rtype: boolean
   :default: true
   :note: 当此参数为 false 时，即使用户打开了静音开关，也能继续发出声音。

          .. deprecated:: 2.3.0 使用 wx.setInnerAudioOption 接口统一设置。

.. attribute:: InnerAudioContext.volume

   :label: 音量。范围 0~1。
   :rtype: number
   :default: 1
   :note: .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

.. attribute:: InnerAudioContext.duration

   :label: 当前音频的长度
   :premise: 只有在当前有合法的 src 时返回
   :rtype: number
   :unit: s(秒)
   :readonly: true

.. attribute:: InnerAudioContext.currentTime

   :label: 当前音频的播放位置,时间保留小数点后 6 位
   :premise: 只有在当前有合法的 src 时返回
   :rtype: number
   :unit: s(秒)
   :readonly: true

.. attribute:: InnerAudioContext.paused

   :label: 当前是是否暂停或停止状态
   :rtype: boolean
   :readonly: true

.. attribute:: InnerAudioContext.buffered

   :label: 音频缓冲的时间点，仅保证当前播放时间点到此时间点内容已缓冲
   :rtype: number
   :readonly: true

方法
-------

.. function:: InnerAudioContext.play()

   :label: 播放

.. function:: InnerAudioContext.pause()

   :label: 暂停。暂停后的音频再播放会从暂停处开始播放

.. function:: InnerAudioContext.stop()

   :label: 停止。停止后的音频再播放会从头开始播放。

.. function:: InnerAudioContext.seek(position)

   :label: 跳转到指定位置
   :param number position: 跳转的时间，单位 s。精确到小数点后 3 位，即支持 ms 级别精确度

.. function:: InnerAudioContext.destroy()

   :label: 销毁当前实例

.. function:: InnerAudioContext.onCanplay(callback)

   :label: 监听音频进入可以播放状态的事件。但不保证后面可以流畅播放
   :param function callback: 音频进入可以播放状态的事件的回调函数

.. function:: InnerAudioContext.offCanplay(callback)

   :label: 取消监听音频进入可以播放状态的事件
   :param function callback: 音频进入可以播放状态的事件的回调函数

.. function:: InnerAudioContext.onPlay(callback)

   :label: 监听音频播放事件
   :param function callback: 音频播放事件的回调函数

.. function:: InnerAudioContext.offPlay(callback)

   :label: 取消监听音频播放事件
   :param function callback: 音频播放事件的回调函数

.. function:: InnerAudioContext.onPause(callback)

   :label: 监听音频暂停事件
   :param function callback: 音频暂停事件的回调函数

.. function:: InnerAudioContext.offPause(callback)

   :label: 取消监听音频暂停事件
   :param function callback: 音频暂停事件的回调函数

.. function:: InnerAudioContext.onStop(callback)

   :label: 监听音频停止事件
   :param function callback: 音频停止事件的回调函数

.. function:: InnerAudioContext.offStop(callback)

   :label: 取消监听音频停止事件
   :param function callback: 音频停止事件的回调函数

.. function:: InnerAudioContext.onEnded(callback)

   :label: 监听音频自然播放至结束的事件
   :param function callback: 音频自然播放至结束的事件的回调函数

.. function:: InnerAudioContext.offEnded(callback)

   :label: 取消监听音频自然播放至结束的事件
   :param function callback: 音频自然播放至结束的事件的回调函数

.. function:: InnerAudioContext.onTimeUpdate(callback)

   :label: 监听音频播放进度更新事件
   :param function callback: 音频播放进度更新事件的回调函数

.. function:: InnerAudioContext.offTimeUpdate(callback)

   :label: 取消监听音频播放进度更新事件
   :param function callback: 音频播放进度更新事件的回调函数

.. function:: InnerAudioContext.onError(callback)

   :label: 监听音频播放错误事件
   :param function callback:

.. function:: InnerAudioContext.offError(callback)

   :label: 取消监听音频播放错误事件
   :param function callback: 音频播放错误事件的回调函数

.. function:: InnerAudioContext.onWaiting(callback)

   :label: 监听音频加载中事件。当音频因为数据不足，需要停下来加载时会触发
   :param function callback: 音频加载中事件的回调函数

.. function:: InnerAudioContext.offWaiting(callback)

   :label: 取消监听音频加载中事件
   :param function callback: 音频加载中事件的回调函数

.. function:: InnerAudioContext.onSeeking(callback)

   :label: 监听音频进行跳转操作的事件
   :param function callback:

.. function:: InnerAudioContext.offSeeking(callback)

   :label: 取消监听音频进行跳转操作的事件
   :param function callback: 音频进行跳转操作的事件的回调函数

.. function:: InnerAudioContext.onSeeked(callback)

   :label: 监听音频完成跳转操作的事件
   :param function callback:

.. function:: InnerAudioContext.offSeeked(callback)

   :label: 取消监听音频完成跳转操作的事件
   :param function callback: 音频完成跳转操作的事件的回调函数


支持格式
-----------

.. table:: 支持格式
    :widths: auto
    :align: center

    +------+-----+---------+
    | 格式 | iOS | Android |
    +======+=====+=========+
    | flac | x   | √       |
    +------+-----+---------+
    | m4a  | √   | √       |
    +------+-----+---------+
    | ogg  | x   | √       |
    +------+-----+---------+
    | ape  | x   | √       |
    +------+-----+---------+
    | amr  | x   | √       |
    +------+-----+---------+
    | wma  | x   | √       |
    +------+-----+---------+
    | wav  | √   | √       |
    +------+-----+---------+
    | mp3  | √   | √       |
    +------+-----+---------+
    | mp4  | x   | √       |
    +------+-----+---------+
    | aac  | √   | √       |
    +------+-----+---------+
    | aiff | √   | x       |
    +------+-----+---------+
    | caf  | √   | x       |
    +------+-----+---------+

示例代码
-----------

.. code:: js

  const innerAudioContext = wx.createInnerAudioContext()
  innerAudioContext.autoplay = true
  innerAudioContext.src = 'http://ws.stream.qqmusic.qq.com/M500001VfvsJ21xFqb.mp3?guid=ffffffff82def4af4b12b3cd9337d5e7&uin=346897220&vkey=6292F51E1E384E061FF02C31F716658E5C81F5594D561F2E88B854E81CAAB7806D5E4F103E55D33C16F3FAC506D1AB172DE8600B37E43FAD&fromtag=46'
  innerAudioContext.onPlay(() => {
    console.log('开始播放')
  })
  innerAudioContext.onError((res) => {
    console.log(res.errMsg)
    console.log(res.errCode)
  })
