:wxapi:`wx.onHCEMessage`
===========================

.. function:: wx.onHCEMessage(function callback)

   监听接收 NFC 设备消息事件

   .. versionadded:: 1.7.0 低版本需做 :ref:`compatibility` 。

   :param function callback({messageType, data, reason}): 接收 NFC 设备消息事件的回调函数

     - **messageType** (*number*) - 消息类型

       1. HCE APDU Command类型，小程序需对此指令进行处理，并调用 sendHCEMessage 接口返回处理指令
       2. 设备离场事件类型

     - **data** (*ArrayBuffer*) - messageType=1 时 ,客户端接收到 NFC 设备的指令
     - **reason** (*number*) - messageType=2 时，原因
