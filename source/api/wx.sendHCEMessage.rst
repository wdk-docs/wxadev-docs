:wxapi:`wx.sendHCEMessage`
============================================

.. function:: wx.sendHCEMessage({data[, success][, fail][, complete]})

   发送 NFC 消息。仅在安卓系统下有效。

   .. versionadded:: 1.7.0 低版本需做 :ref:`compatibility`

   :param ArrayBuffer data: 二进制数据
   :param function success({errCode}): 接口调用成功的回调函数, errCode:

     - **0** ok 正常
     - **13000**  当前设备不支持NFC
     - **13001**  当前设备支持NFC，但系统NFC开关未开启
     - **13002**  当前设备支持NFC，但不支持HCE
     - **13003**  AID列表参数格式错误
     - **13004**  未设置微信为默认NFC支付应用
     - **13005**  返回的指令不合法
     - **13006**  注册AID失败

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）


   :示例代码:

   .. code-block::

     const buffer = new ArrayBuffer(1)
     const dataView = new DataView(buffer)
     dataView.setUint8(0, 0)

     wx.startHCE({
       success(res) {
         wx.onHCEMessage(function (res) {
           if (res.messageType === 1) {
             wx.sendHCEMessage({data: buffer})
           }
         })
       }
     })
