:wxapi:`LivePlayerContext`
============================================

.. class:: LivePlayerContext

  LivePlayerContext 实例，可通过 :func:`wx.createLivePlayerContext` 获取。

  livePlayerContext 通过 id 跟一个 <:doc:`live-player`> 组件绑定，操作对应的 <:doc:`live-player`> 组件。

方法
----------

.. function:: LivePlayerContext.play({[success][, fail][, complete]})

  :label: 播放
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.stop({[success][, fail][, complete]})

  :label: 停止
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.mute({[success][, fail][, complete]})

  :label: 静音
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.pause({[success][, fail][, complete]})

  :label: 暂停
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.resume({[success][, fail][, complete]})

基础库 1.9.90 开始支持，低版本需做 :ref:`compatibility` 。
  :label: 恢复
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.requestFullScreen({[direction][, success][, fail][, complete]})

  :label: 进入全屏
  :param number direction: ``0``	设置全屏时的方向

    - *0*	正常竖向
    - *90*	屏幕逆时针90度
    - *-90*	屏幕顺时针90度

  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: LivePlayerContext.exitFullScreen({[success][, fail][, complete]})

  :label: 退出全屏
  :param function success: 接口调用成功的回调函数
  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

示例代码

在开发者工具中预览效果