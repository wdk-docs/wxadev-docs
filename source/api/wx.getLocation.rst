:wxapi:`wx.getLocation`
============================================

.. function:: wx.getLocation({[type][, altitude][, success][, fail][, complete]})

   调用前需要 用户授权 :data:`scope.userLocation`

   获取当前的地理位置、速度。当用户离开小程序后，此接口无法调用。

   :param string type: **wgs84**

     - *wgs84* 返回 gps 坐标
     - *gcj02* 返回 可用于 :func:`wx.openLocation` 的坐标

   :param string altitude: **false** 传入 true 会返回高度信息，由于获取高度需要较高精确度，会减慢接口返回速度  1.6.0
   :param function success: 接口调用成功的回调函数

      - **latitude** (*number*) - 纬度，范围为 -90~90，负数表示南纬
      - **longitude** (*number*) - 经度，范围为 -180~180，负数表示西经
      - **speed** (*number*) - 速度，单位 m/s
      - **accuracy** (*number*) - 位置的精确度
      - **altitude** (*number*) - 高度，单位 m  1.2.0
      - **verticalAccuracy** (*number*) - 垂直精度，单位 m（Android 无法获取，返回 0）  1.2.0
      - **horizontalAccuracy** (*number*) - 水平精度，单位 m  1.2.0

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

   :示例:

     .. code::

       wx.getLocation({
         type: 'wgs84',
         success(res) {
           const latitude = res.latitude
           const longitude = res.longitude
           const speed = res.speed
           const accuracy = res.accuracy
         }
       })

.. attention::

   工具中定位模拟使用IP定位，可能会有一定误差。且工具目前仅支持 gcj02 坐标。
   使用第三方服务进行逆地址解析时，请确认第三方服务默认的坐标系，正确进行坐标转换。
