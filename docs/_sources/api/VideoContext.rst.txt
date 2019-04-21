:wxapi:`VideoContext`
============================================

.. class:: VideoContext

  VideoContext实例，可通过 :func:`wx.createVideoContext` 获取。

  videoContext通过id跟一个<:ref:`video`>组件绑定，对应操作的<:ref:`video`>组件。

方法
-----

.. function:: VideoContext.play()

  :label: 播放视频

.. function:: VideoContext.pause()

  :label: 暂停视频

.. function:: VideoContext.stop()

  :label: 停止视频

.. function:: VideoContext.seek(position)

  :label: 跳转到指定位置

  :param number position: 跳转到的位置，单位 s

.. function:: VideoContext.sendDanmu({text[,color]})

  :label: 发送弹幕

  :param string text: 弹幕文字
  :param string color: 弹幕颜色

.. function:: VideoContext.playbackRate(rate)

  :label: 设置倍速播放
  :param number rate: 倍率，支持 0.5/0.8/1.0/1.25/1.5，2.6.3 起支持 2.0 倍速

  .. versionadded:: 1.4.0 低版本需做 :ref:`compatibility` 。

.. function:: VideoContext.requestFullScreen({[direction]})

  :label: 进入全屏
  :param number direction: 设置全屏时视频的方向，不指定则根据宽高比自动判断, 合法值:

    - *0*	正常竖向
    - *90*	屏幕逆时针90度
    - *-90*	屏幕顺时针90度

  .. versionadded:: 1.4.0 低版本需做 :ref:`compatibility` 。

  .. versionadded:: 1.7.0 参数 direction


.. function:: VideoContext.exitFullScreen()

  :label: 退出全屏

  .. versionadded:: 1.4.0 低版本需做 :ref:`compatibility` 。

.. function:: VideoContext.showStatusBar()

  :label: 显示状态栏，仅在iOS的全屏下有效

  .. versionadded:: 2.1.0 低版本需做 :ref:`compatibility` 。

.. function:: VideoContext.hideStatusBar()

  :label: 隐藏状态栏，仅在iOS的全屏下有效

  .. versionadded:: 2.1.0 低版本需做 :ref:`compatibility` 。

示例代码
------------

在开发者工具中预览效果

.. code:: html

  <view class="section tc">
    <video
      id="myVideo"
      src="http://wxsnsdy.tc.qq.com/105/20210/snsdyvideodownload?filekey=30280201010421301f0201690402534804102ca905ce620b1241b726bc41dcff44e00204012882540400&bizid=1023&hy=SH&fileparam=302c020101042530230204136ffd93020457e3c4ff02024ef202031e8d7f02030f42400204045a320a0201000400"
      enable-danmu
      danmu-btn
      controls
    ></video>
    <view class="btn-area">
      <input bindblur="bindInputBlur" />
      <button bindtap="bindSendDanmu">发送弹幕</button>
    </view>
  </view>

.. code::

  function getRandomColor() {
    const rgb = []
    for (let i = 0; i < 3; ++i) {
      let color = Math.floor(Math.random() * 256).toString(16)
      color = color.length == 1 ? '0' + color : color
      rgb.push(color)
    }
    return '#' + rgb.join('')
  }

  Page({
    onReady(res) {
      this.videoContext = wx.createVideoContext('myVideo')
    },
    inputValue: '',
    bindInputBlur(e) {
      this.inputValue = e.detail.value
    },
    bindSendDanmu() {
      this.videoContext.sendDanmu({
        text: this.inputValue,
        color: getRandomColor()
      })
    }
  })