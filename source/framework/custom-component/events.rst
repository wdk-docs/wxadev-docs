组件间通信与事件
===============

组件间通信
组件间的基本通信方式有以下几种。

WXML 数据绑定：用于父组件向子组件的指定属性设置数据，仅能设置 JSON 兼容数据（自基础库版本 2.0.9 开始，还可以在数据中包含函数）。具体在 组件模板和样式 章节中介绍。
事件：用于子组件向父组件传递数据，可以传递任意数据。
如果以上两种方式不足以满足需要，父组件还可以通过 this.selectComponent 方法获取子组件实例对象，这样就可以直接访问组件的任意数据和方法。
监听事件
事件系统是组件间通信的主要方式之一。自定义组件可以触发任意的事件，引用组件的页面可以监听这些事件。关于事件的基本概念和用法，参见 事件 。

监听自定义组件事件的方法与监听基础组件事件的方法完全一致：

代码示例：

<!-- 当自定义组件触发“myevent”事件时，调用“onMyEvent”方法 -->
<component-tag-name bindmyevent="onMyEvent" />
<!-- 或者可以写成 -->
<component-tag-name bind:myevent="onMyEvent" />
Page({
  onMyEvent(e) {
    e.detail // 自定义组件触发事件时提供的detail对象
  }
})
触发事件
自定义组件触发事件时，需要使用 triggerEvent 方法，指定事件名、detail对象和事件选项：

代码示例：

在开发者工具中预览效果

<!-- 在自定义组件中 -->
<button bindtap="onTap">点击这个按钮将触发“myevent”事件</button>
Component({
  properties: {},
  methods: {
    onTap() {
      const myEventDetail = {} // detail对象，提供给事件监听函数
      const myEventOption = {} // 触发事件的选项
      this.triggerEvent('myevent', myEventDetail, myEventOption)
    }
  }
})
触发事件的选项包括：

选项名	类型	是否必填	默认值	描述
bubbles	Boolean	否	false	事件是否冒泡
composed	Boolean	否	false	事件是否可以穿越组件边界，为false时，事件将只能在引用组件的节点树上触发，不进入其他任何组件内部
capturePhase	Boolean	否	false	事件是否拥有捕获阶段
关于冒泡和捕获阶段的概念，请阅读 事件 章节中的相关说明。

代码示例：

在开发者工具中预览效果

// 页面 page.wxml
<another-component bindcustomevent="pageEventListener1">
  <my-component bindcustomevent="pageEventListener2"></my-component>
</another-component>
// 组件 another-component.wxml
<view bindcustomevent="anotherEventListener">
  <slot />
</view>
// 组件 my-component.wxml
<view bindcustomevent="myEventListener">
  <slot />
</view>
// 组件 my-component.js
Component({
  methods: {
    onTap() {
      this.triggerEvent('customevent', {}) // 只会触发 pageEventListener2
      this.triggerEvent('customevent', {}, {bubbles: true}) // 会依次触发 pageEventListener2 、 pageEventListener1
      this.triggerEvent('customevent', {}, {bubbles: true, composed: true}) // 会依次触发 pageEventListener2 、 anotherEventListener 、 pageEventListener1
    }
  }
})