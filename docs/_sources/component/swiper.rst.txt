swiper
===========================

.. versionadded:: 1.0.0 开始支持，低版本需做兼容处理。

滑块视图容器。其中只可放置<swiper-item>组件，否则会导致未定义的行为。

属性	类型	默认值	必填	说明	最低版本
indicator-dots	boolean	false	否	是否显示面板指示点	1.0.0
indicator-color	color	rgba(0, 0, 0, .3)	否	指示点颜色	1.1.0
indicator-active-color	color	#000000	否	当前选中的指示点颜色	1.1.0
autoplay	boolean	false	否	是否自动切换	1.0.0
current	number	0	否	当前所在滑块的 index	1.0.0
interval	number	5000	否	自动切换时间间隔	1.0.0
duration	number	500	否	滑动动画时长	1.0.0
circular	boolean	false	否	是否采用衔接滑动	1.0.0
vertical	boolean	false	否	滑动方向是否为纵向	1.0.0
previous-margin	string	"0px"	否	前边距，可用于露出前一项的一小部分，接受 px 和 rpx 值	1.9.0
next-margin	string	"0px"	否	后边距，可用于露出后一项的一小部分，接受 px 和 rpx 值	1.9.0
display-multiple-items	number	1	否	同时显示的滑块数量	1.9.0
skip-hidden-item-layout	boolean	false	否	是否跳过未显示的滑块布局，设为 true 可优化复杂情况下的滑动性能，但会丢失隐藏状态滑块的布局信息	1.9.0
easing-function	string	"default"	否	指定 swiper 切换缓动动画类型	2.6.5
bindchange	eventhandle		否	current 改变时会触发 change 事件，event.detail = {current, source}	1.0.0
bindtransition	eventhandle		否	swiper-item 的位置发生改变时会触发 transition 事件，event.detail = {dx: dx, dy: dy}	2.4.3
bindanimationfinish	eventhandle		否	动画结束时会触发 animationfinish 事件，event.detail 同上	1.9.0
easing-function 的合法值

值	说明	最低版本
default	默认缓动函数
linear	线性动画
easeInCubic	缓入动画
easeOutCubic	缓出动画
easeInOutCubic	缓入缓出动画
change事件 source 返回值
从 1.4.0 开始，change事件增加 source字段，表示导致变更的原因，可能值如下：

autoplay 自动播放导致swiper变化；
touch 用户划动引起swiper变化；
其它原因将用空字符串表示。
Bug & Tip
.. tip:: 如果在 bindchange 的事件回调函数中使用 setData 改变 current 值，则有可能导致 setData 被不停地调用，因而通常情况下请在改变 current 值前检测 source 字段来判断是否是由于用户触摸引起。
示例代码
在开发者工具中预览效果

.. code:: html

  <swiper
    indicator-dots="{{indicatorDots}}"
    autoplay="{{autoplay}}"
    interval="{{interval}}"
    duration="{{duration}}"
  >
    <block wx:for="{{imgUrls}}">
      <swiper-item>
        <image src="{{item}}" class="slide-image" width="355" height="150" />
      </swiper-item>
    </block>
  </swiper>
  <button bindtap="changeIndicatorDots">indicator-dots</button>
  <button bindtap="changeAutoplay">autoplay</button>
  <slider bindchange="intervalChange" show-value min="500" max="2000" />
  <slider bindchange="durationChange" show-value min="1000" max="10000" />
  Page({
    data: {
      imgUrls: [
        'https://images.unsplash.com/photo-1551334787-21e6bd3ab135?w=640',
        'https://images.unsplash.com/photo-1551214012-84f95e060dee?w=640',
        'https://images.unsplash.com/photo-1551446591-142875a901a1?w=640'
      ],
      indicatorDots: false,
      autoplay: false,
      interval: 5000,
      duration: 1000
    },
    changeIndicatorDots(e) {
      this.setData({
        indicatorDots: !this.data.indicatorDots
      })
    },
    changeAutoplay(e) {
      this.setData({
        autoplay: !this.data.autoplay
      })
    },
    intervalChange(e) {
      this.setData({
        interval: e.detail.value
      })
    },
    durationChange(e) {
      this.setData({
        duration: e.detail.value
      })
    }
  })