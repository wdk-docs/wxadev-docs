:wxapi:`MapContext`
=======================

版本:|release| 更新:|today|

.. function:: wx.createMapContext(mapId, this)

   创建 map 上下文 :class:`MapContext` 对象。

   :param string mapId: :ref:`<map> <map>` 组件的 id
   :param object this:  在自定义组件下，当前组件实例的this，以操作组件内 :ref:`<map> <map>` 组件
   :return: :class:`MapContext`

.. class:: MapContext()

   :class:`MapContext` 实例，可通过 :func:`wx.createMapContext` 获取。

   :class:`MapContext` 通过 id 跟一个 :ref:`<map> <map>` 组件绑定，操作对应的 :ref:`<map> <map>` 组件。

方法
-------------

.. function:: MapContext.getCenterLocation({[success][, fail][, complete]})

   获取当前地图中心的经纬度。返回的是 `gcj02` 坐标系，可以用于 :func:`wx.openLocation()`

   :param function success({longitude, latitude}): 接口调用成功的回调函数

    - **longitude**	(*number*) - 经度
    - **latitude**	(*number*) - 纬度

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）

.. function:: MapContext.moveToLocation()

   将地图中心移动到当前定位点。需要配合 :ref:`map` 组件的 ``show-location`` 使用

.. function:: MapContext.translateMarker(object)

   平移marker，带动画

   :param Object object: object

.. function:: MapContext.includePoints(object)

   缩放视野展示所有经纬度

   :param Object object: object

.. function:: MapContext.getRegion()

   获取当前地图的视野范围

.. function:: MapContext.getScale()

   获取当前地图的缩放级别

示例代码
-------------

:download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/3uVxpmmT6wY9>`

.. code:: html

  <!-- map.wxml -->
  <map id="myMap" show-location />

  <button type="primary" bindtap="getCenterLocation">获取位置</button>
  <button type="primary" bindtap="moveToLocation">移动位置</button>
  <button type="primary" bindtap="translateMarker">移动标注</button>
  <button type="primary" bindtap="includePoints">缩放视野展示所有经纬度</button>

.. code::

  // map.js
  Page({
    onReady(e) {
      // 使用 wx.createMapContext 获取 map 上下文
      this.mapCtx = wx.createMapContext('myMap')
    },
    getCenterLocation() {
      this.mapCtx.getCenterLocation({
        success(res) {
          console.log(res.longitude)
          console.log(res.latitude)
        }
      })
    },
    moveToLocation() {
      this.mapCtx.moveToLocation()
    },
    translateMarker() {
      this.mapCtx.translateMarker({
        markerId: 0,
        autoRotate: true,
        duration: 1000,
        destination: {
          latitude: 23.10229,
          longitude: 113.3345211,
        },
        animationEnd() {
          console.log('animation end')
        }
      })
    },
    includePoints() {
      this.mapCtx.includePoints({
        padding: [10],
        points: [{
          latitude: 23.10229,
          longitude: 113.3345211,
        }, {
          latitude: 23.00229,
          longitude: 113.3345211,
        }]
      })
    }
  })

