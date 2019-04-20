Wi-Fi
==========

在小程序中支持搜索周边的 Wi-Fi，同时可以针对指定 Wi-Fi，传入密码发起连接。

该系列接口为系统原生能力，如需查看「微信连Wi-Fi」能力及配置跳转小程序，请参考文档。

连接指定 Wi-Fi 接口调用时序：

Android：startWifi —> connectWifi —> onWifiConnected
iOS（仅iOS 11及以上版本支持）：startWifi —> connectWifi —> onWifiConnected
连周边 Wi-Fi 接口调用时序：

Android：startWifi —> getWifiList —> onGetWifiList —> connectWifi —> onWifiConnected
iOS（iOS 11.0及11.1版本因系统原因暂不支持）：startWifi —> getWifiList —> onGetWifiList —> setWifiList —> onWifiConnected
注意：

Wi-Fi 相关接口暂不可用 wx.canIUse 接口判断。
Android 6.0 以上版本，在没有打开定位开关的时候会导致设备不能正常获取周边的 Wi-Fi 信息。