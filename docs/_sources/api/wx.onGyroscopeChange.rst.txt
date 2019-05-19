:wxapi:`wx.onGyroscopeChange`
====================================

.. function:: wx.onGyroscopeChange(function callback)


   .. versionadded:: 2.3.0 低版本需做 :ref:`compatibility` 。

监听陀螺仪数据变化事件。频率根据 wx.startGyroscope() 的 interval 参数。可以使用 wx.stopGyroscope() 停止监听。

参数
function callback
陀螺仪数据变化事件的回调函数

参数
Object res
属性	类型	说明
res	Object
res 的结构

属性	类型	说明
x	number	x 轴的角速度
y	number	y 轴的角速度
z	number	z 轴的角速度
