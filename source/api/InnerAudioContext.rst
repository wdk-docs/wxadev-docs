:wxapi:`InnerAudioContext`
============================================

.. js:function:: wx.createInnerAudioContext()

   .. versionadded:: 1.6.0 低版本需做 :ref:`compatibility` 。

   创建内部 :ref:`audio` 上下文 :class:`InnerAudioContext` 对象。

   :return: :class:`InnerAudioContext`


属性
--------

.. js:class:: InnerAudioContext

   InnerAudioContext 实例，可通过 :js:func:`wx.createInnerAudioContext` 接口获取实例。

.. js:attribute:: InnerAudioContext.src

   :label: 音频资源的地址，用于直接播放
   :rtype: string

   .. versionadded:: 2.2.3 开始支持云文件ID

.. js:attribute:: InnerAudioContext.startTime

   :label: 开始播放的位置
   :rtype: number
   :unit: s(秒)
   :default: 0

.. js:attribute:: InnerAudioContext.autoplay

   :label: 是否自动开始播放
   :rtype: boolean
   :default: false

.. js:attribute:: InnerAudioContext.loop

   :label: 是否循环播放
   :rtype: boolean
   :default: false

.. js:attribute:: InnerAudioContext.obeyMuteSwitch

   :label: 是否遵循系统静音开关
   :rtype: boolean
   :default: true
   :note: 当此参数为 false 时，即使用户打开了静音开关，也能继续发出声音。

          .. deprecated:: 2.3.0 使用 wx.setInnerAudioOption 接口统一设置。

.. js:attribute:: InnerAudioContext.volume

   :label: 音量。范围 0~1。
   :rtype: number
   :default: 1
   :note: .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

.. js:attribute:: InnerAudioContext.duration

   :label: 当前音频的长度
   :premise: 只有在当前有合法的 src 时返回
   :rtype: number
   :unit: s(秒)
   :readonly: true

.. js:attribute:: InnerAudioContext.currentTime

   :label: 当前音频的播放位置,时间保留小数点后 6 位
   :premise: 只有在当前有合法的 src 时返回
   :rtype: number
   :unit: s(秒)
   :readonly: true

.. js:attribute:: InnerAudioContext.paused

   :label: 当前是是否暂停或停止状态
   :rtype: boolean
   :readonly: true

.. js:attribute:: InnerAudioContext.buffered

   :label: 音频缓冲的时间点，仅保证当前播放时间点到此时间点内容已缓冲
   :rtype: number
   :readonly: true

方法
-------

.. js:function:: InnerAudioContext.play()

   :label: 播放

.. js:function:: InnerAudioContext.pause()

   :label: 暂停。暂停后的音频再播放会从暂停处开始播放

.. js:function:: InnerAudioContext.stop()

   :label: 停止。停止后的音频再播放会从头开始播放。

.. js:function:: InnerAudioContext.seek(number position)

   :label: 跳转到指定位置

.. js:function:: InnerAudioContext.destroy()

   :label: 销毁当前实例

.. js:function:: InnerAudioContext.onCanplay(function callback)

   :label: 监听音频进入可以播放状态的事件。但不保证后面可以流畅播放

.. js:function:: InnerAudioContext.offCanplay(function callback)

   :label: 取消监听音频进入可以播放状态的事件

.. js:function:: InnerAudioContext.onPlay(function callback)

   :label: 监听音频播放事件

.. js:function:: InnerAudioContext.offPlay(function callback)

   :label: 取消监听音频播放事件

.. js:function:: InnerAudioContext.onPause(function callback)

   :label: 监听音频暂停事件

.. js:function:: InnerAudioContext.offPause(function callback)

   :label: 取消监听音频暂停事件

.. js:function:: InnerAudioContext.onStop(function callback)

   :label: 监听音频停止事件

.. js:function:: InnerAudioContext.offStop(function callback)

   :label: 取消监听音频停止事件

.. js:function:: InnerAudioContext.onEnded(function callback)

   :label: 监听音频自然播放至结束的事件

.. js:function:: InnerAudioContext.offEnded(function callback)

   :label: 取消监听音频自然播放至结束的事件

.. js:function:: InnerAudioContext.onTimeUpdate(function callback)

   :label: 监听音频播放进度更新事件

.. js:function:: InnerAudioContext.offTimeUpdate(function callback)

   :label: 取消监听音频播放进度更新事件

.. js:function:: InnerAudioContext.onError(function callback)

   :label: 监听音频播放错误事件

.. js:function:: InnerAudioContext.offError(function callback)

   :label: 取消监听音频播放错误事件

.. js:function:: InnerAudioContext.onWaiting(function callback)

   :label: 监听音频加载中事件。当音频因为数据不足，需要停下来加载时会触发

.. js:function:: InnerAudioContext.offWaiting(function callback)

   :label: 取消监听音频加载中事件

.. js:function:: InnerAudioContext.onSeeking(function callback)

   :label: 监听音频进行跳转操作的事件

.. js:function:: InnerAudioContext.offSeeking(function callback)

   :label: 取消监听音频进行跳转操作的事件

.. js:function:: InnerAudioContext.onSeeked(function callback)

   :label: 监听音频完成跳转操作的事件

.. js:function:: InnerAudioContext.offSeeked(function callback)

   :label: 取消监听音频完成跳转操作的事件

支持格式

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

.. code::js

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