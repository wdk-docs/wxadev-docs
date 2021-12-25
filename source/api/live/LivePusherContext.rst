:wxapi:`LivePusherContext`
============================================

.. function:: wx.createLivePusherContext()

  .. versionadded:: 1.7.0 低版本需做 :ref:`compatibility` 。

  :label: 创建 :ref:`live-pusher` 上下文 :class:`LivePusherContext` 对象。
  :returns: LivePusherContext


.. class:: LivePusherContext

  LivePusherContext 实例，可通过 :func:`wx.createLivePusherContext` 获取。

  livePusherContext 与页面内唯一的 <:ref:`live-pusher`> 组件绑定，操作对应的 <:ref:`live-pusher`> 组件。

方法
--------

.. function:: LivePusherContext.start({[success][, fail][, complete]})

  :label: 播放推流

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.stop({[success][, fail][, complete]})

  :label: 停止推流

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.pause({[success][, fail][, complete]})

  :label: 暂停推流

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.resume({[success][, fail][, complete]})

  :label: 恢复推流

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.switchCamera({[success][, fail][, complete]})

  :label: 切换前后摄像头

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.snapshot({[success][, fail][, complete]})

  .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

  :label: 快照

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.toggleTorch({[success][, fail][, complete]})

  .. versionadded:: 2.1.0 低版本需做 :ref:`compatibility` 。

  :label: 切换

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.playBGM(url[, success][, fail][, complete]})

  .. versionadded:: 2.4.0 低版本需做 :ref:`compatibility` 。

  :label: 播放背景音

  :param string url: 加入背景混音的资源地址
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.stopBGM({[success][, fail][, complete]})

  .. versionadded:: 2.4.0 低版本需做 :ref:`compatibility` 。

  :label: 停止背景音

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.pauseBGM({[success][, fail][, complete]})

  .. versionadded:: 2.4.0 低版本需做 :ref:`compatibility` 。

  :label: 暂停背景音

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.resumeBGM({[success][, fail][, complete]})

  .. versionadded:: 2.4.0 低版本需做 :ref:`compatibility` 。

  :label: 恢复背景音

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePusherContext.setBGMVolume({string[, success][, fail][, complete]})

  .. versionadded:: 2.4.0 低版本需做 :ref:`compatibility` 。

  :label: 设置背景音音量
  :param string volume: 音量大小，范围是 0-1
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

示例代码

在开发者工具中预览效果
