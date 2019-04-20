camera
=============

.. versionadded::  1.6.0 低版本需做 `兼容处理 </dev/framework/compatibility>`_ 。

系统相机。扫码二维码功能，需升级微信客户端至6.7.3。需要 `用户授权 </dev/framework/open-ability/authorize.html>`_ scope.camera。

相关api：`wx.createCameraContext </dev/api/wx.createCameraContext.html>`_

属性	类型	默认值	必填	说明	最低版本
mode	string	normal	否	应用模式	2.1.0
device-position	string	back	否	摄像头朝向	1.0.0
flash	string	auto	否	闪光灯，值为auto, on, off	1.0.0
bindstop	eventhandle		否	摄像头在非正常终止时触发，如退出后台等情况	1.0.0
binderror	eventhandle		否	用户不允许使用摄像头时触发	1.0.0
bindscancode	eventhandle		否	在扫码识别成功时触发，仅在 mode="scanCode" 时生效	2.1.0
mode 的合法值

值	说明	最低版本
normal	相机模式
scanCode	扫码模式
device-position 的合法值

值	说明	最低版本
front	前置
back	后置
flash 的合法值

值	说明	最低版本
auto	自动
on	打开
off	关闭
Bug & Tip

.. tip:: 同一页面只能插入一个 camera 组件。

.. tip:: 请注意 `原生组件使用限制 <https://developers.weixin.qq.com/miniprogram/dev/component/native-component.html#%E5%8E%9F%E7%94%9F%E7%BB%84%E4%BB%B6%E7%9A%84%E4%BD%BF%E7%94%A8%E9%99%90%E5%88%B6>`_

示例代码
-------------

`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/VBZ3Jim26zYu>`_

.. code:: html

  <!-- camera.wxml -->
  <camera
    device-position="back"
    flash="off"
    binderror="error"
    style="width: 100%; height: 300px;"
  ></camera>
  <button type="primary" bindtap="takePhoto">拍照</button>
  <view>预览</view>
  <image mode="widthFix" src="{{src}}"></image>
  // camera.js
  Page({
    takePhoto() {
      const ctx = wx.createCameraContext()
      ctx.takePhoto({
        quality: 'high',
        success: (res) => {
          this.setData({
            src: res.tempImagePath
          })
        }
      })
    },
    error(e) {
      console.log(e.detail)
    }
  })