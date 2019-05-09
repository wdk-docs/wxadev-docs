:wxapi:`wx.setEnableDebug`
============================================

.. function:: wx.setEnableDebug({enableDebug[, success][, fail][, complete]})

    .. versionadded:: 1.4.0 低版本需做 :ref:`compatibility` 。

    设置是否打开调试开关。此开关对正式版也能生效。

    :param boolean enableDebug: 是否打开调试
    :param function success: 接口调用成功的回调函数
    :param function fail: 接口调用失败的回调函数
    :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

    :示例代码:

      .. code::

        // 打开调试
        wx.setEnableDebug({
          enableDebug: true
        })

        // 关闭调试
        wx.setEnableDebug({
          enableDebug: false
        })

    .. tip::

      在正式版打开调试还有一种方法，就是先在开发版或体验版打开调试，再切到正式版就能看到vConsole。
