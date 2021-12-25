:wxapi:`LivePlayerContext`
============================================

.. function:: wx.createLivePlayerContext(id, this)

  .. versionadded:: 1.7.0 低版本需做 :ref:`compatibility` 。

  创建 live-player 上下文 LivePlayerContext 对象。

  :param string id: :ref:`<live-player> <live-player>` 组件的 id
  :param Object this: 在自定义组件下，当前组件实例的this，以操作组件内 :ref:`<live-player> <live-player>` 组件
  :return: :class:`LivePlayerContext`

.. class:: LivePlayerContext

  LivePlayerContext 实例，可通过 :func:`wx.createLivePlayerContext` 获取。

  livePlayerContext 通过 id 跟一个 <:ref:`live-player`> 组件绑定，操作对应的 :ref:`<live-player> <live-player>` 组件。

方法
----------

.. function:: LivePlayerContext.play({[success][, fail][, complete]})

  播放

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.stop({[success][, fail][, complete]})

  停止

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.mute({[success][, fail][, complete]})

  静音

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.pause({[success][, fail][, complete]})

  暂停

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.resume({[success][, fail][, complete]})

  .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility`

  恢复

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.requestFullScreen({[direction][, success][, fail][, complete]})

  进入全屏

  :param number direction: ``0``	设置全屏时的方向

    - *0*	正常竖向
    - *90*	屏幕逆时针90度
    - *-90*	屏幕顺时针90度

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.exitFullScreen({[success][, fail][, complete]})

  退出全屏

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

示例代码

:download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/UzWEzmm763Y4>`
