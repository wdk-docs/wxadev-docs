:wxwork:`onNFCReadMessage <dev-doc/qywx-api/nfc/onNFCReadMessage>`
=====================================================================================

.. function:: onNFCReadMessage(callback)

  :label: 监听NFC设备的消息回调。当用户离开小程序后，此接口无效。
  :param function callback({messageType, data}): NFC设备有事件时的回调函数

    - **messageType**	(*number*) -	消息类型如下:

      - *1* -	小程序在前台，当检测到 NFC 标签时回调
      - *2* -	小程序退到后台，当用户不可见时，自动停止 NFC

    - **data** (*object*) - 消息数据

      - **hex**	(*string*) -	十六进制 id 序列
      - **reversed_hex**	(*string*) -	字节反转十六进制 id 序列
      - **dec**	(*number*) -	十进制 id 数值
      - **reversed_dec**	(*number*) -	字节反转十进制 id 数值

  :示例:

    .. code::

      Page({
        onNFCReadMessage(e) {
          console.log(JSON.stringify(e))
          if (e.messageType == 1) {
            wx.showModal({
              title: 'NFC-Id',
              content: JSON.stringify(e),
            })
          } else if (e.messageType == 2) {
            console.log('Auto-Stop')
            wx.showModal({
              title: 'NFC-Auto-Stop',
              content: JSON.stringify(e),
            })
          }
        }
      })
