:wxapi:`wx.getShareInfo`
============================================

.. function:: wx.getShareInfo(shareTicket[, timeout][,success][, fail][, complete])

  .. versionadded:: 1.1.0 低版本需做 :ref:`compatibility`

  获取转发详细信息

  :param string shareTicket: shareTicket
  :param number timeout: 超时时间，单位 ms	1.9.90
  :param function success({errMsg,encryptedData,iv}): 接口调用成功的回调函数

    - **errMsg**	(*string*) - 错误信息
    - **encryptedData** (*string*) -包括敏感数据在内的完整转发信息的加密数据，详细见加密数据解密算法
    - **iv** (*string*) -加密算法的初始向量，详细见加密数据解密算法

  :param function fail: 接口调用失败的回调函数
  :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

  :示例:

    encryptedData 解密后为以下 json 结构，详见加密数据解密算法。其中 openGId 为当前群的唯一标识

    .. code::

      {
        "openGId": "OPENGID"
      }

  .. tip:: 如需要展示群名称，可以使用开放数据组件
