��          �               <     =  g   T     �  (   �     �  -   �  {      �   �     ~  ,   �  �   �  �   I  u   �     h  �   u            w  (     �  g   �       (   %     N  -   U  {   �  �   �     �	  ,   �	  �   !
  �   �
  u   U     �  �   �     w     ~   :wxapi:`UpdateManager` UpdateManager 对象，用来管理更新，可通过 :func:`wx.getUpdateManager` 接口获取实例。 class 低版本需做 :ref:`compatibility` 。 参数 小程序有版本更新事件的回调函数 强制小程序重启并使用新版本。在小程序新版本下载完成后（即收到 onUpdateReady 回调）调用。 微信开发者工具上可以通过「编译模式」下的「下次编译模拟更新」开关来调试 小程序开发版/体验版没有「版本」概念，所以无法在开发版/体验版上测试更版本更新情况 是否有新版本 更新管理器对象 :class:`UpdateManager` 监听向微信后台请求检查更新结果事件。微信在小程序冷启动时自动检查更新，不需由开发者主动触发。 监听小程序更新失败事件。小程序有新版本，客户端主动触发下载（无需开发者触发），下载失败（可能是网络原因等）后回调 监听小程序有版本更新事件。客户端主动触发下载（无需开发者触发），下载成功后回调 示例代码 获取全局唯一的版本更新管理器，用于管理小程序更新。 关于小程序的更新机制，可以查看 :ref:`operating-mechanism` 文档。 返回 返回类型 Project-Id-Version: wxadev 
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
 :wxapi:`UpdateManager` UpdateManager 对象，用来管理更新，可通过 :func:`wx.getUpdateManager` 接口获取实例。 class 低版本需做 :ref:`compatibility` 。 参数 小程序有版本更新事件的回调函数 强制小程序重启并使用新版本。在小程序新版本下载完成后（即收到 onUpdateReady 回调）调用。 微信开发者工具上可以通过「编译模式」下的「下次编译模拟更新」开关来调试 小程序开发版/体验版没有「版本」概念，所以无法在开发版/体验版上测试更版本更新情况 是否有新版本 更新管理器对象 :class:`UpdateManager` 监听向微信后台请求检查更新结果事件。微信在小程序冷启动时自动检查更新，不需由开发者主动触发。 监听小程序更新失败事件。小程序有新版本，客户端主动触发下载（无需开发者触发），下载失败（可能是网络原因等）后回调 监听小程序有版本更新事件。客户端主动触发下载（无需开发者触发），下载成功后回调 示例代码 获取全局唯一的版本更新管理器，用于管理小程序更新。 关于小程序的更新机制，可以查看 :ref:`operating-mechanism` 文档。 返回 返回类型 