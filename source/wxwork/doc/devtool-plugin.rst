
开发者工具插件支持
==================================================

插件安装
-----------

开发企业微信小程序可以通过在微信小程序开发者工具(版本号1.02.1903211以上)安装企业微信插件的方式得到支持，安装步骤：

1. 选择工具 -> 插件菜单

  .. image:: https://rescdn.qqmail.com/node/wework/images/devtool_qywx_plugin_1.7c0c1a0ed1.png?t=19042222

  选择菜单

2. 安装企业微信小程序模拟器插件

  .. image::  https://rescdn.qqmail.com/node/wework/images/devtool_qywx_plugin_2.30dcdb1927.png?t=19042222

  安装插件

开发调试
-----------

1. 切换开发模式到企业微信小程序模式

  .. image:: https://rescdn.qqmail.com/node/wework/images/devtool_qywx_plugin_3.070b0b8267.png?t=19042222

  切换开发模式

2. 在企业微信真机预览小程序

  .. image:: https://rescdn.qqmail.com/node/wework/images/devtool_qywx_plugin_4.65767b7177.png?t=19042222

  预览小程序

3. 选择企业

  - 如果开发者有多个企业，可以通过“模拟操作”下拉菜单中点击“选择企业”菜单进行企业切换。
  - 对于没有企业微信的开发者，可以在“选择企业”中选择“企业微信测试企业”来进行提审前的开发调试。测试企业的corpid固定为：ww17f8d10783494584，secret固定为：i5t-rh8bXeNCgihcYPrG9ZPpWkivzPJ69sv570osk6I，在开发调试code2session接口会使用到。

4. 开始开发

  切换到企业微信模式以后，小程序的运行时环境将切换到企业微信的运行时环境，不仅可以调用企业微信支持的API和组件，也可以调用企业微信专有的部分接口。