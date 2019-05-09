:wxapi:`wx.chooseLocation`
============================================

.. function:: wx.chooseLocation({[success][, fail][, complete]})

   调用前需要 用户授权 :data:`scope.userLocation`

   打开地图选择位置。

   :param function success(): 接口调用成功的回调函数

     - **name** (*string*) - 位置名称
     - **address** (*string*) - 详细地址
     - **latitude** (*string*) - 纬度，浮点数，范围为-90~90，负数表示南纬。使用 gcj02 国测局坐标系
     - **longitude** (*string*) - 经度，浮点数，范围为-180~180，负数表示西经。使用 gcj02 国测局坐标系

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）
