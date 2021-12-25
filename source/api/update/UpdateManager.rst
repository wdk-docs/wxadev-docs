:wxapi:`UpdateManager`
============================================

.. function:: wx.getUpdateManager()

  .. versionadded:: 1.9.90 低版本需做 :ref:`compatibility` 。

  获取全局唯一的版本更新管理器，用于管理小程序更新。
  关于小程序的更新机制，可以查看 :ref:`operating-mechanism` 文档。

  :rtype: class
  :return:

    更新管理器对象 :class:`UpdateManager`

.. class:: UpdateManager

   UpdateManager 对象，用来管理更新，可通过 :func:`wx.getUpdateManager` 接口获取实例。

.. function:: UpdateManager.applyUpdate()

  强制小程序重启并使用新版本。在小程序新版本下载完成后（即收到 onUpdateReady 回调）调用。

.. function:: UpdateManager.onCheckForUpdate({hasUpdate})

  监听向微信后台请求检查更新结果事件。微信在小程序冷启动时自动检查更新，不需由开发者主动触发。

  :param boolean hasUpdate: 是否有新版本

.. function:: UpdateManager.onUpdateReady(callback)

  监听小程序有版本更新事件。客户端主动触发下载（无需开发者触发），下载成功后回调

  :param function callback: 小程序有版本更新事件的回调函数

.. function:: UpdateManager.onUpdateFailed(callback)

  监听小程序更新失败事件。小程序有新版本，客户端主动触发下载（无需开发者触发），下载失败（可能是网络原因等）后回调

  :param function callback: 小程序有版本更新事件的回调函数

示例代码

.. code:: js

  const updateManager = wx.getUpdateManager()

  updateManager.onCheckForUpdate(function (res) {
    // 请求完新版本信息的回调
    console.log(res.hasUpdate)
  })

  updateManager.onUpdateReady(function () {
    wx.showModal({
      title: '更新提示',
      content: '新版本已经准备好，是否重启应用？',
      success(res) {
        if (res.confirm) {
          // 新的版本已经下载好，调用 applyUpdate 应用新版本并重启
          updateManager.applyUpdate()
        }
      }
    })
  })

  updateManager.onUpdateFailed(function () {
    // 新版本下载失败
  })

.. tip::

  微信开发者工具上可以通过「编译模式」下的「下次编译模拟更新」开关来调试
  小程序开发版/体验版没有「版本」概念，所以无法在开发版/体验版上测试更版本更新情况
