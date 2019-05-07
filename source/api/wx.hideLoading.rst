:wxapi:`wx.hideLoading`
==============================

.. function:: wx.hideLoading({[success][, fail][, complete]})

    .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility`。

    隐藏 loading 提示框

    :param function success: 接口调用成功的回调函数
    :param function fail:  接口调用失败的回调函数
    :param function complete:  接口调用结束的回调函数（调用成功、失败都会执行）
