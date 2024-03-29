:wxfrwk:`Trace 工具 <performance/tools>`
===================================================

版本:|release| 更新:|today|


微信 Andoid 6.5.10 开始，我们提供了 Trace 导出工具，开发者可以在开发者工具 Trace Panel 中使用该功能。

使用方法
-------------------

1. PC 上需要先安装 adb 工具，可以参考一些主流教程进行安装，Mac 上可使用 brew 直接安装。
2. 确定 adb 工具已成功安装后，在开发者工具上打开 Trace Panel，将 Android 手机通过 USB 连接上 PC，点击「Choose Devices」，此时手机上可能弹出连接授权框，请点击「允许」。
3. 选择设备后，在手机上打开你需要调试的开发版小程序，通过右上角菜单，打开性能监控面板，重启小程序；
4. 重启后，在小程序上进行操作，完成操作后，通过右上角菜单，导出 Trace 数据；
5. 此时开发者工具 Trace Panel 上会自动拉取 Trace 文件，选择你要分析的 Trace 文件即可；


可以通过 adb devices 命令确定设备是否已和 PC 建立起连接

image
