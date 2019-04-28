:wxapi:`RecorderManager`
============================================

.. js:function:: wx.getRecorderManager()

  .. versionadded:: 1.6.0 低版本需做 :ref:`compatibility` 。

  获取全局唯一的录音管理器 :class:`RecorderManager`

  :return: :class:`RecorderManager`

.. class:: RecorderManager

  :label: 全局唯一的录音管理器

方法
---------

.. seealso::

   开始录制 :func:`RecorderManager.start`

.. function:: RecorderManager.pause()

  :label: 暂停录音

.. function:: RecorderManager.resume()

  :label: 继续录音

.. function:: RecorderManager.stop()

  :label: 停止录音

.. function:: RecorderManager.onStart(function callback)

  :label: 监听录音开始事件
  :param function callback: 录音开始事件的回调函数

.. function:: RecorderManager.onResume(function callback)

  :label: 监听录音继续事件
  :param function callback: 录音开始事件的回调函数

.. function:: RecorderManager.onPause(function callback)

  :label: 监听录音暂停事件
  :param function callback: 录音暂停事件的回调函数

.. function:: RecorderManager.onStop(function callback)

  :label: 监听录音结束事件
  :param function callback: 录音结束事件的回调函数

.. function:: RecorderManager.onFrameRecorded(function callback)

  :label: 监听已录制完指定帧大小的文件事件。如果设置了 frameSize，则会回调此事件。
  :param function callback(res): 已录制完指定帧大小的文件事件的回调函数

    - **res** (*Object*) -

      - **frameBuffer** (*ArrayBuffer*) - 录音分片数据
      - **isLastFrame** (*boolean*) - 当前帧是否正常录音结束前的最后一帧

.. function:: RecorderManager.onError(function callback)

  :label: 监听录音错误事件
  :param function callback(res): 录音错误事件的回调函数

    - **res** (*Object*) -

      - **errMsg** (*string*) - 错误信息

.. function:: RecorderManager.onInterruptionBegin(function callback)

  .. versionadded:: 2.3.0 低版本需做 :ref:`compatibility` 。

  :label: 监听录音因为受到系统占用而被中断开始事件。
    以下场景会触发此事件：微信语音聊天、微信视频聊天。此事件触发后，录音会被暂停。
    pause 事件在此事件后触发
  :param function callback: 录音因为受到系统占用而被中断开始事件的回调函数

.. function:: RecorderManager.onInterruptionEnd(function callback)

  .. versionadded:: 2.3.0 低版本需做 :ref:`compatibility` 。

  :label: 监听录音中断结束事件。
    在收到 interruptionBegin 事件之后，小程序内所有录音会暂停，收到此事件之后才可再次录音成功。
  :param function callback: 录音中断结束事件的回调函数

示例代码
-------------

  .. code::

    const recorderManager = wx.getRecorderManager()

    recorderManager.onStart(() => {
      console.log('recorder start')
    })
    recorderManager.onPause(() => {
      console.log('recorder pause')
    })
    recorderManager.onStop((res) => {
      console.log('recorder stop', res)
      const {tempFilePath} = res
    })
    recorderManager.onFrameRecorded((res) => {
      const {frameBuffer} = res
      console.log('frameBuffer.byteLength', frameBuffer.byteLength)
    })

    const options = {
      duration: 10000,
      sampleRate: 44100,
      numberOfChannels: 1,
      encodeBitRate: 192000,
      format: 'aac',
      frameSize: 50
    }

    recorderManager.start(options)
