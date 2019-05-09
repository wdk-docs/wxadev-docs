:wxapi:`wx.openLocation`
===========================

.. function:: wx.openLocation({latitude, longitude[, scale][, name][, address][, success][, fail][, complete]})

    使用微信内置地图查看位置

    :param number latitude: 纬度，范围为-90~90，负数表示南纬。使用 gcj02 国测局坐标系
    :param number longitude: 经度，范围为-180~180，负数表示西经。使用 gcj02 国测局坐标系
    :param number scale: **18** 缩放比例，范围5~18
    :param string name: 位置名
    :param string address: 地址的详细说明
    :param function success: 接口调用成功的回调函数
    :param function fail: 接口调用失败的回调函数
    :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

    :示例:

      .. code::

        wx.getLocation({
          type: 'gcj02', // 返回可以用于wx.openLocation的经纬度
          success(res) {
            const {latitude, longitude} = res;
            wx.openLocation({
              latitude,
              longitude,
              scale: 18
            })
          }
        })
