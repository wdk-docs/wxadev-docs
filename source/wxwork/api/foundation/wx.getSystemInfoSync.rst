wx.getSystemInfoSync
===================================================

.. function:: wx.getSystemInfoSync(res)

  小程序可以在微信和企业微信中调用此接口，但是在企业微信中调用此接口时，
  会额外返回一个 environment 字段（微信中不返回），
  如此字段值为 wxwork，则表示当前小程序运行在企业微信环境中。

  :func:`wx.getSystemInfo` 的同步版本

  :returns:

    - **brand** (*string*) - 设备品牌
    - **model** (*string*) - 设备型号
    - **pixelRatio** (*number*) - 设备像素比
    - **screenWidth** (*number*) - 屏幕宽度，单位px
    - **screenHeight** (*number*) - 屏幕高度，单位px
    - **windowWidth** (*number*) - 可使用窗口宽度，单位px
    - **windowHeight** (*number*) - 可使用窗口高度，单位px
    - **statusBarHeight** (*number*) - 状态栏的高度，单位px
    - **language** (*string*) - 微信设置的语言
    - **version** (*string*) - 微信版本号
    - **system** (*string*) - 操作系统及版本
    - **platform** (*string*) - 客户端平台
    - **fontSizeSetting** (*number*) - 用户字体大小（单位px）。以微信客户端「我-设置-通用-字体大小」中的设置为准
    - **SDKVersion** (*string*) - 客户端基础库版本
    - **benchmarkLevel** (*number*) - 设备性能等级（仅Android小游戏）。取值为：-2 或 0（该设备无法运行小游戏），-1（性能未知），>=1（设备性能值，该值越高，设备性能越好，目前最高不到50）
    - **environment** (*string*) - 小程序当前运行环境

    :示例代码:

      .. code::

        wx.getSystemInfo({
          success(res) {
            console.log(res.model)
            console.log(res.pixelRatio)
            console.log(res.windowWidth)
            console.log(res.windowHeight)
            console.log(res.language)
            console.log(res.version)
            console.log(res.platform)
            console.log(res.environment)
          }
        })

      .. code::

        try {
          const res = wx.getSystemInfoSync()
          console.log(res.model)
          console.log(res.pixelRatio)
          console.log(res.windowWidth)
          console.log(res.windowHeight)
          console.log(res.language)
          console.log(res.version)
          console.log(res.platform)
          console.log(res.environment)
        } catch (e) {
          // Do something when catch error
        }
