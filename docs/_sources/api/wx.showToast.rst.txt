:wxapi:`wx.showToast`
============================================

.. function:: wx.showToast({title[, icon][, image][, duration][, mask][, success][, fail][, complete]})

    显示消息提示框

    :param string title: 提示的内容
    :param string icon: **'success'**	图标

      - *success*	显示成功图标，此时 title 文本最多显示 7 个汉字长度
      - *loading*	显示加载图标，此时 title 文本最多显示 7 个汉字长度
      - *none*	不显示图标，此时 title 文本最多可显示两行，1.9.0及以上版本支持

    :param string image: 自定义图标的本地路径，image 的优先级高于 icon	1.1.0
    :param number duration: **1500** 提示的延迟时间
    :param boolean mask: **false** 是否显示透明蒙层，防止触摸穿透
    :param function success: 接口调用成功的回调函数
    :param function fail: 接口调用失败的回调函数
    :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

    :示例:

      .. code::

        wx.showToast({
          title: '成功',
          icon: 'success',
          duration: 2000
        })

.. attention::

  - wx.showLoading 和 wx.showToast 同时只能显示一个
  - wx.showToast 应与 wx.hideToast 配对使用
