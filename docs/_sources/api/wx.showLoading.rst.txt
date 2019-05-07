:wxapi:`wx.showLoading`
============================================

.. function:: wx.showLoading({title[, mask][, success][, fail][, complete]})

    基础库 1.1.0 开始支持，低版本需做兼容处理。

    显示 loading 提示框。需主动调用 wx.hideLoading 才能关闭提示框

    :param string title: 提示的内容
    :param boolean mask: **false** 是否显示透明蒙层，防止触摸穿透
    :param function success: 接口调用成功的回调函数
    :param function fail: 接口调用失败的回调函数
    :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
    :示例:

      .. code::

        wx.showLoading({
          title: '加载中',
        })

        setTimeout(function () {
          wx.hideLoading()
        }, 2000)

.. attention::

  - wx.showLoading 和 wx.showToast 同时只能显示一个
  - wx.showLoading 应与 wx.hideLoading 配对使用
