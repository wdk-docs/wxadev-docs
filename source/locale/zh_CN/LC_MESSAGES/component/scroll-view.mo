��    /      �                               
   -     8     J     \     d     w     �  ]   �     �     �       .        E  
   Q     \     r     {     �     �  y   �          (  �   ;       t     -   �     �  7   �     �     �          "  c   B     �     �  �   �     C     _     {  F   �  7   �  7   	  	   9	  w  C	     �
     �
     �
  
   �
     �
     �
     
          %     1  ]   7     �     �     �  .   �     �  
   �     
           )     2     9  y   I     �     �  �   �     �  t   �  -   /     ]  7   d     �     �     �     �  c   �     T     a  �   h     �          )  F   0  7   w  7   �  	   �   1.0.0 50 :wx_comp:`scroll-view` bindscroll bindscrolltolower bindscrolltoupper boolean enable-back-to-top eventhandle false iOS点击顶部状态栏、安卓双击标题栏时，滚动条返回顶部，只支持竖向 lower-threshold number/string scroll-into-view scroll-into-view 的优先级高于 scroll-top scroll-left scroll-top scroll-with-animation scroll-x scroll-y string upper-threshold 值应为某子元素id（id不能以数字开头）。设置哪个方向可滚动，则在哪个方向滚动到该元素 允许横向滚动 允许纵向滚动 可滚动视图区域。使用竖向滚动时，需要给<:doc:`scroll-view`>一个固定高度，通过 WXSS 设置 height。组件属性的长度单位默认为px，2.4.0起支持传入单位(rpx/px)。 否 在滚动 scroll-view 时会阻止页面回弹，所以在 scroll-view 中滚动，是无法触发 onPullDownRefresh 在设置滚动条位置时使用动画过渡 属性 开始支持，低版本需做 :ref:`compatibility` 。 必填 最低版本 滚动到底部/右边时触发 滚动到顶部/左边时触发 滚动时触发，event.detail = {scrollLeft, scrollTop, scrollHeight, scrollWidth, deltaX, deltaY} 示例代码 类型 若要使用下拉刷新，请使用页面的滚动，而不是 scroll-view ，这样也能通过点击顶部状态栏回到页面顶部 设置横向滚动条位置 设置竖向滚动条位置 说明 请勿在 scroll-view 中使用 textarea、map、canvas、video 组件 距底部/右边多远时，触发 scrolltolower 事件 距顶部/左边多远时，触发 scrolltoupper 事件 默认值 Project-Id-Version: wxadev 
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
 1.0.0 50 :wx_comp:`scroll-view` bindscroll bindscrolltolower bindscrolltoupper boolean enable-back-to-top eventhandle false iOS点击顶部状态栏、安卓双击标题栏时，滚动条返回顶部，只支持竖向 lower-threshold number/string scroll-into-view scroll-into-view 的优先级高于 scroll-top scroll-left scroll-top scroll-with-animation scroll-x scroll-y string upper-threshold 值应为某子元素id（id不能以数字开头）。设置哪个方向可滚动，则在哪个方向滚动到该元素 允许横向滚动 允许纵向滚动 可滚动视图区域。使用竖向滚动时，需要给<:doc:`scroll-view`>一个固定高度，通过 WXSS 设置 height。组件属性的长度单位默认为px，2.4.0起支持传入单位(rpx/px)。 否 在滚动 scroll-view 时会阻止页面回弹，所以在 scroll-view 中滚动，是无法触发 onPullDownRefresh 在设置滚动条位置时使用动画过渡 属性 开始支持，低版本需做 :ref:`compatibility` 。 必填 最低版本 滚动到底部/右边时触发 滚动到顶部/左边时触发 滚动时触发，event.detail = {scrollLeft, scrollTop, scrollHeight, scrollWidth, deltaX, deltaY} 示例代码 类型 若要使用下拉刷新，请使用页面的滚动，而不是 scroll-view ，这样也能通过点击顶部状态栏回到页面顶部 设置横向滚动条位置 设置竖向滚动条位置 说明 请勿在 scroll-view 中使用 textarea、map、canvas、video 组件 距底部/右边多远时，触发 scrolltolower 事件 距顶部/左边多远时，触发 scrolltoupper 事件 默认值 