.. _map:

:wx_comp:`map`
===========================

.. versionadded:: 1.0.0 低版本需做 :ref:`compatibility` 。

地图。相关api :func:`wx.createMapContext` 。

个性化地图能力可在小程序后台“设置-开发者工具-腾讯位置服务”申请开通。
设置subkey后，小程序内的地图组件均会使用该底图效果。详见《小程序个性地图使用指南》
组件属性的长度单位默认为px，2.4.0起支持传入单位(rpx/px)。

+--------------------+------------------+--------+------+----------------------------------------------+----------+
|        属性        |       类型       | 默认值 | 必填 |                     说明                     | 最低版本 |
+====================+==================+========+======+==============================================+==========+
| longitude          | number           |        | 是   | 中心经度                                     | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| latitude           | number           |        | 是   | 中心纬度                                     | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| scale              | number           | 16     | 否   | 缩放级别，取值范围为5-18                     | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| markers            | Array.<marker>   |        | 否   | 标记点                                       | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| covers             | Array.<cover>    |        | 否   | 即将移除，请使用 markers                     | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| polyline           | Array.<polyline> |        | 否   | 路线                                         | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| circles            | Array.<circle>   |        | 否   | 圆                                           | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| controls           | Array.<control>  |        | 否   | 控件（即将废弃，建议使用 cover-view 代替）   | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| include-points     | Array.<point>    |        | 否   | 缩放视野以包含所有给定的坐标点               | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| show-location      | boolean          | false  | 否   | 显示带有方向的当前定位点                     | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| polygons           | Array.<polygon>  |        | 否   | 多边形                                       | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| subkey             | string           |        | 否   | 个性化地图使用的key，仅初始化地图时有效      | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| enable-3D          | boolean          | false  | 否   | 展示3D楼块(工具暂不支持）                    | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| show-compass       | boolean          | false  | 否   | 显示指南针                                   | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| enable-overlooking | boolean          | false  | 否   | 开启俯视                                     | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| enable-zoom        | boolean          | true   | 否   | 是否支持缩放                                 | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| enable-scroll      | boolean          | true   | 否   | 是否支持拖动                                 | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| enable-rotate      | boolean          | false  | 否   | 是否支持旋转                                 | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| bindtap            | eventhandle      |        | 否   | 点击地图时触发                               | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| bindmarkertap      | eventhandle      |        | 否   | 点击标记点时触发，会返回marker的id           | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| bindcontroltap     | eventhandle      |        | 否   | 点击控件时触发，会返回control的id            | 1.0.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| bindcallouttap     | eventhandle      |        | 否   | 点击标记点对应的气泡时触发，会返回marker的id | 1.2.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| bindupdated        | eventhandle      |        | 否   | 在地图渲染更新完成时触发                     | 1.6.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| bindregionchange   | eventhandle      |        | 否   | 视野发生变化时触发                           | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+
| bindpoitap         | eventhandle      |        | 否   | 点击地图poi点时触发                          | 2.3.0    |
+--------------------+------------------+--------+------+----------------------------------------------+----------+

marker 标记点用于在地图上显示标记的位置

属性	说明	类型	必填	备注	最低版本
id	标记点 id	number	否	marker 点击事件回调会返回此 id。建议为每个 marker 设置上 number 类型 id，保证更新 marker 时有更好的性能。
latitude	纬度	number	是	浮点数，范围 -90 ~ 90
longitude	经度	number	是	浮点数，范围 -180 ~ 180
title	标注点名	string	否
zIndex	显示层级	number	否		2.3.0
iconPath	显示的图标	string	是	项目目录下的图片路径，支持相对路径写法，以'/'开头则表示相对小程序根目录；也支持临时路径和网络图片（2.3.0）
rotate	旋转角度	number	否	顺时针旋转的角度，范围 0 ~ 360，默认为 0
alpha	标注的透明度	number	否	默认 1，无透明，范围 0 ~ 1
width	标注图标宽度	number/string	否	默认为图片实际宽度
height	标注图标高度	number/string	否	默认为图片实际高度
callout	自定义标记点上方的气泡窗口	Object	否	支持的属性见下表，可识别换行符。	1.2.0
label	为标记点旁边增加标签	Object	否	支持的属性见下表，可识别换行符。	1.2.0
anchor	经纬度在标注图标的锚点，默认底边中点	Object	否	{x, y}，x 表示横向(0-1)，y 表示竖向(0-1)。{x: .5, y: 1} 表示底边中点	1.2.0
aria-label	无障碍访问，（属性）元素的额外描述	string	否		2.5.0

marker 上的气泡 callout

属性	说明	类型	最低版本
content	文本	string	1.2.0
color	文本颜色	string	1.2.0
fontSize	文字大小	number	1.2.0
borderRadius	边框圆角	number	1.2.0
borderWidth	边框宽度	number	2.3.0
borderColor	边框颜色	string	2.3.0
bgColor	背景色	string	1.2.0
padding	文本边缘留白	number	1.2.0
display	'BYCLICK':点击显示; 'ALWAYS':常显	string	1.2.0
textAlign	文本对齐方式。有效值: left, right, center	string	1.6.0

marker 上的气泡 label

属性	说明	类型	最低版本
content	文本	string	1.2.0
color	文本颜色	string	1.2.0
fontSize	文字大小	number	1.2.0
x	label的坐标（废弃）	number	1.2.0
y	label的坐标（废弃）	number	1.2.0
anchorX	label的坐标，原点是 marker 对应的经纬度	number	2.1.0
anchorY	label的坐标，原点是 marker 对应的经纬度	number	2.1.0
borderWidth	边框宽度	number	1.6.0
borderColor	边框颜色	string	1.6.0
borderRadius	边框圆角	number	1.6.0
bgColor	背景色	string	1.6.0
padding	文本边缘留白	number	1.6.0
textAlign	文本对齐方式。有效值: left, right, center	string	1.6.0

polyline 指定一系列坐标点，从数组第一项连线至最后一项

属性	说明	类型	必填	备注	最低版本
points	经纬度数组	array	是	[{latitude: 0, longitude: 0}]
color	线的颜色	string	否	十六进制
width	线的宽度	number	否
dottedLine	是否虚线	boolean	否	默认 false
arrowLine	带箭头的线	boolean	否	默认 false，开发者工具暂不支持该属性	1.2.0
arrowIconPath	更换箭头图标	string	否	在 arrowLine 为 true 时生效	1.6.0
borderColor	线的边框颜色	string	否		1.2.0
borderWidth	线的厚度	number	否		1.2.0

polygon 指定一系列坐标点，根据 points 坐标数据生成闭合多边形

属性	说明	类型	必填	备注	最低版本
points	经纬度数组	array	是	[{latitude: 0, longitude: 0}]	2.3.0
strokeWidth	描边的宽度	number	否		2.3.0
strokeColor	描边的颜色	string	否	十六进制	2.3.0
fillColor	填充颜色	string	否	十六进制
zIndex	设置多边形Z轴数值	number	否		2.3.0

circle 在地图上显示圆

属性	说明	类型	必填	备注
latitude	纬度	number	是	浮点数，范围 -90 ~ 90
longitude	经度	number	是	浮点数，范围 -180 ~ 180
color	描边的颜色	string	否	十六进制
fillColor	填充颜色	string	否	十六进制
radius	半径	number	是
strokeWidth	描边的宽度	number	否

control 在地图上显示控件，控件不随着地图移动。即将废弃，请使用 cover-view

属性	说明	类型	必填	备注
id	控件id	number	否	在控件点击事件回调会返回此id
position	控件在地图的位置	object	是	控件相对地图位置
iconPath	显示的图标	string	是	项目目录下的图片路径，支持相对路径写法，以'/'开头则表示相对小程序根目录；也支持临时路径
clickable	是否可点击	boolean	否	默认不可点击

position

属性	说明	类型	必填	备注
left	距离地图的左边界多远	number	否	默认为0
top	距离地图的上边界多远	number	否	默认为0
width	控件宽度	number	否	默认为图片宽度
height	控件高度	number	否	默认为图片高度

bindregionchange 返回值

属性	说明	类型	备注
type	视野变化开始、结束时触发	string	视野变化开始为begin，结束为end
causedBy	导致视野变化的原因	string	拖动地图导致(drag)、缩放导致(scale)、调用接口导致(update)

.. tip:: 个性化地图暂不支持工具中调试。请先使用微信客户端进行测试。

.. tip:: 地图中的颜色值color/borderColor/bgColor等需使用6位（8位）十六进制表示，8位时后两位表示alpha值，如：#000000AA

.. tip:: 地图组件的经纬度必填, 如果不填经纬度则默认值是北京的经纬度。

.. tip:: map 组件使用的经纬度是火星坐标系，调用 wx.getLocation 接口需要指定 type 为 gcj02

.. tip:: 请注意原生组件使用限制。

示例代码

在开发者工具中预览效果

.. code:: html


  <!-- map.wxml -->
  <map
    id="map"
    longitude="113.324520"
    latitude="23.099994"
    scale="14"
    controls="{{controls}}"
    bindcontroltap="controltap"
    markers="{{markers}}"
    bindmarkertap="markertap"
    polyline="{{polyline}}"
    bindregionchange="regionchange"
    show-location
    style="width: 100%; height: 300px;"
  ></map>

.. code:: js

  // map.js
  Page({
    data: {
      markers: [{
        iconPath: '/resources/others.png',
        id: 0,
        latitude: 23.099994,
        longitude: 113.324520,
        width: 50,
        height: 50
      }],
      polyline: [{
        points: [{
          longitude: 113.3245211,
          latitude: 23.10229
        }, {
          longitude: 113.324520,
          latitude: 23.21229
        }],
        color: '#FF0000DD',
        width: 2,
        dottedLine: true
      }],
      controls: [{
        id: 1,
        iconPath: '/resources/location.png',
        position: {
          left: 0,
          top: 300 - 50,
          width: 50,
          height: 50
        },
        clickable: true
      }]
    },
    regionchange(e) {
      console.log(e.type)
    },
    markertap(e) {
      console.log(e.markerId)
    },
    controltap(e) {
      console.log(e.controlId)
    }
  })
