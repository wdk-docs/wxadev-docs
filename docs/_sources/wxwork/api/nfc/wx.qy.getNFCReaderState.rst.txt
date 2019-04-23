:wxwork:`wx.qy.getNFCReaderState <dev-doc/qywx-api/nfc/wxqygetnfcreaderstate>`
======================================================================================================

.. function:: wx.qy.getNFCReaderState({[success][, fail][, complete]})

  :label: 判断当前设备是否支持 NFC 能力
  :param function success({errcode,errmsg}):	接口调用成功的回调函数

    - **errcode** (*number*) - 错误码

      - *0* 正常
      - *13000* 当前设备不支持NFC

    - **errmsg** (*string*) - 错误信息

      - *ok* 正常

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
  :前提: 需要用户授权
  :示例:

    .. code::

      wx.qy.getNFCReaderState({
        success: (res) => {
          console.log(JSON.stringify(res))
          // todo what you want
        },
        fail: (res) => {
          wx.showModal({
            title: 'NFC-Not-Support',
            content: JSON.stringify(res),
          })
        }
      })
