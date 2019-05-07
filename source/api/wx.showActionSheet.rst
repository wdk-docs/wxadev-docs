:wxapi:`wx.showActionSheet`
============================================


.. function:: wx.showActionSheet({itemList[, itemColor][, success][, fail][, complete]})

   显示操作菜单

   :param Array.<string> itemList: 按钮的文字数组，数组长度最大为 **6**
   :param string itemColor: ``#000000``	按钮的文字颜色
   :param function success({tapIndex}): 接口调用成功的回调函数

     - **tapIndex** (*number*) - 用户点击的按钮序号，从上到下的顺序，从0开始

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
   :示例:

     .. code::

       wx.showActionSheet({
         itemList: ['A', 'B', 'C'],
         success(res) {
           console.log(res.tapIndex)
         },
         fail(res) {
           console.log(res.errMsg)
         }
       })

.. attention::

  - Android 6.7.2 以下版本，点击取消或蒙层时，回调 fail, errMsg 为 "fail cancel"；
  - Android 6.7.2 及以上版本 和 iOS 点击蒙层不会关闭模态弹窗，
    所以尽量避免使用「取消」分支中实现业务逻辑
