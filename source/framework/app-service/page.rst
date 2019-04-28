.. _page:

:wxfrwk:`注册页面 <app-service/page>`
=========================================

对于小程序中的每个页面，都需要在页面对应的 js 文件中调用 Page 方法注册页面示例，指定页面的初始数据、生命周期回调、事件处理函数等。

详细的参数含义和使用请参考 Page 参考文档 。

.. code:: js

  // index.js
  Page({
    data: {
      text: 'This is page data.'
    },
    onLoad(options) {
      // Do some initialize when page load.
    },
    onReady() {
      // Do something when page ready.
    },
    onShow() {
      // Do something when page show.
    },
    onHide() {
      // Do something when page hide.
    },
    onUnload() {
      // Do something when page close.
    },
    onPullDownRefresh() {
      // Do something when pull down.
    },
    onReachBottom() {
      // Do something when page reach bottom.
    },
    onShareAppMessage() {
      // return custom share data when user share.
    },
    onPageScroll() {
      // Do something when page scroll
    },
    onResize() {
      // Do something when page resize
    },
    onTabItemTap(item) {
      console.log(item.index)
      console.log(item.pagePath)
      console.log(item.text)
    },
    // Event handler.
    viewTap() {
      this.setData({
        text: 'Set some data for updating view.'
      }, function () {
        // this is setData callback
      })
    },
    customData: {
      hi: 'MINA'
    }
  })

除了 Page ，作为高级用法，页面可以像自定义组件一样使用 Component 来创建，这样就可以使用自定义组件的特性，如 behaviors 等。

具体细节请阅读 Component 构造器 章节。

