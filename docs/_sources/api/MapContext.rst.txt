:wxbpi:`MapContext`
=======================

.. js:module:: MapContext()

   MapContext 实例，可通过 :js:func:`wx.createMapContext` 获取。

   mapContext 通过 id 跟一个 <map> 组件绑定，操作对应的 <map> 组件。

   :方法:

      MapContext.getCenterLocation()

      获取当前地图中心的经纬度。返回的是 gcj02 坐标系，可以用于 wx.openLocation()

      MapContext.moveToLocation()

      将地图中心移动到当前定位点。需要配合map组件的show-location使用

      MapContext.translateMarker(Object object)

      平移marker，带动画

      MapContext.includePoints(Object object)

      缩放视野展示所有经纬度

      MapContext.getRegion()

      获取当前地图的视野范围

      MapContext.getScale()

      获取当前地图的缩放级别

   :示例:

      在开发者工具中预览效果

      .. code:: xml

        <!-- map.wxml -->
        <map id="myMap" show-location />

        <button type="primary" bindtap="getCenterLocation">获取位置</button>
        <button type="primary" bindtap="moveToLocation">移动位置</button>
        <button type="primary" bindtap="translateMarker">移动标注</button>
        <button type="primary" bindtap="includePoints">缩放视野展示所有经纬度</button>

      .. code:: js

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

