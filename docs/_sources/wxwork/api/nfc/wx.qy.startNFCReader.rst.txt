:wxwork:`wx.qy.startNFCReader <dev-doc/qywx-api/nfc/wxqygetnfcstartnfcreader>`
======================================================================================================

.. function:: wx.qy.startNFCReader({[success][, fail][, complete]})

  :label: 打开 NFC 模块，仅支持安卓系统
  :param function success({errcode,errmsg}):	接口调用成功的回调函数

    - **errcode** (*number*) - 错误码

      - *0* 正常
      - *13000* 当前设备不支持NFC
      - *13001*		当前设备支持NFC，但系统NFC开关未开启

    - **errmsg** (*string*) - 错误信息

      - *ok* 正常

  :param function fail:	接口调用失败的回调函数
  :param function complete:	接口调用结束的回调函数（调用成功、失败都会执行）
  :前提: 需要用户授权
  :示例:

    .. code::

      wx.qy.startNFCReader({
        success: (res) => {
          wx.showModal({
            title: 'NFC-Start',
            content: JSON.stringify(res),
          })
        },
        fail: (res) => {
          console.log(JSON.stringify(res))
        }
      })
