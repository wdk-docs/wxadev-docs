:wxapi:`wx.showModal`
============================================

.. function:: wx.showModal({title, content[, showCancel][, cancelText][, cancel][, confirmText][, confirmText]})

   显示模态对话框

  :param string title: 提示的标题
  :param string content: 提示的内容
  :param boolean showCancel: **true**  是否显示取消按钮
  :param string cancelText: **'取消'**  取消按钮的文字，最多 4 个字符
  :param string cancelColor: **#000000**  取消按钮的文字颜色，必须是 16 进制格式的颜色字符串
  :param string confirmText: **'确定'**  确认按钮的文字，最多 4 个字符
  :param string confirmColor: **#576B95**  确认按钮的文字颜色，必须是 16 进制格式的颜色字符串
  :param function success({confirm,cancel}): 接口调用成功的回调函数

    - **confirm**	(*boolean*) -	为 true 时，表示用户点击了确定按钮
    - **cancel**	(*boolean*) -	为 true 时，表示用户点击了取消（用于 Android 系统区分点击蒙层关闭还是点击取消按钮关闭）	1.1.0

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    .. code::

      wx.showModal({
        title: '提示',
        content: '这是一个模态弹窗',
        success(res) {
          if (res.confirm) {
            console.log('用户点击确定')
          } else if (res.cancel) {
            console.log('用户点击取消')
          }
        }
      })

.. attention::

  - Android 6.7.2 以下版本，点击取消或蒙层时，回调 fail, errMsg 为 "fail cancel"；
  - Android 6.7.2 及以上版本 和 iOS 点击蒙层不会关闭模态弹窗，所以尽量避免使用「取消」分支中实现业务逻辑
  