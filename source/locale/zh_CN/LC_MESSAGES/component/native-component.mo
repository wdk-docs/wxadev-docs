��          �               �  *   �     �     �     �  .        @     L     X     \     e  Q   k  �   �  �   �  �   �     F  �   b  3   �  <     n   X  T   �  +     &   H     o  Z   v  6   �  w    *   �	     �	     �	     �	  .   �	     
     
     
     
     (
  Q   .
  �   �
  �   r  �   h     	  �   %  3   �  <   �  n     T   �  +   �  &        2  Z   9  6   �   :wx_comp:`原生组件 <native-component>` camera canvas cover-view 与 cover-image input（仅在focus时表现为原生组件） live-player live-pusher map textarea video 不能在父级节点使用 overflow: hidden 来裁剪原生组件的显示区域 为了解决原生组件层级最高的限制。小程序专门提供了 cover-view 和 cover-image 组件，可以覆盖在部分原生组件上面。这两个组件也是原生组件，但是使用限制与其他原生组件有所不同。 原生组件会遮挡 vConsole 弹出的调试面板。 在工具上，原生组件是用web组件模拟的，因此很多情况并不能很好的还原真机的表现，建议开发者在使用到原生组件时尽量在真机上进行调试。 原生组件的事件监听不能使用 bind:eventname 的写法，只支持 bindeventname。原生组件也不支持 catch 和 capture 的事件绑定方式。 原生组件的使用限制 原生组件的层级是最高的，所以页面中的其他组件无论设置 z-index 为多少，都无法盖在原生组件上。 原生组件还无法在 <picker-view> 中使用。 后插入的原生组件可以覆盖之前的原生组件。 基础库 2.4.4 以下版本，原生组件不支持在 <scroll-view>、<swiper>、<movable-view> 中使用。 小程序中的部分组件是由客户端创建的原生组件，这些组件有： 无法定义原生组件为 position: fixed 无法对原生组件设置 CSS 动画 概述 由于原生组件脱离在 WebView 渲染流程外，因此在使用时有以下限制： 部分CSS样式无法应用于原生组件，例如： Project-Id-Version: wxadev 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-09 22:55+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :wx_comp:`原生组件 <native-component>` camera canvas cover-view 与 cover-image input（仅在focus时表现为原生组件） live-player live-pusher map textarea video 不能在父级节点使用 overflow: hidden 来裁剪原生组件的显示区域 为了解决原生组件层级最高的限制。小程序专门提供了 cover-view 和 cover-image 组件，可以覆盖在部分原生组件上面。这两个组件也是原生组件，但是使用限制与其他原生组件有所不同。 原生组件会遮挡 vConsole 弹出的调试面板。 在工具上，原生组件是用web组件模拟的，因此很多情况并不能很好的还原真机的表现，建议开发者在使用到原生组件时尽量在真机上进行调试。 原生组件的事件监听不能使用 bind:eventname 的写法，只支持 bindeventname。原生组件也不支持 catch 和 capture 的事件绑定方式。 原生组件的使用限制 原生组件的层级是最高的，所以页面中的其他组件无论设置 z-index 为多少，都无法盖在原生组件上。 原生组件还无法在 <picker-view> 中使用。 后插入的原生组件可以覆盖之前的原生组件。 基础库 2.4.4 以下版本，原生组件不支持在 <scroll-view>、<swiper>、<movable-view> 中使用。 小程序中的部分组件是由客户端创建的原生组件，这些组件有： 无法定义原生组件为 position: fixed 无法对原生组件设置 CSS 动画 概述 由于原生组件脱离在 WebView 渲染流程外，因此在使用时有以下限制： 部分CSS样式无法应用于原生组件，例如： 