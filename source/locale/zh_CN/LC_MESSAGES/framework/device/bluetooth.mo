��          L               |   O   }   �   �   �  h     ^  �   e  w  �  O   b  �   �  �  M     C
  �   J
   iOS 微信客户端 6.5.6 版本开始支持，Android 6.5.7 版本开始支持 在小程序蓝牙适配器模块生效期间，开发者才能够正常调用蓝牙相关的小程序 API，并收到蓝牙模块相关的事件回调。 注意 由于系统限制，Android 上获取到的 deviceId 为设备 MAC 地址，iOS 上则为设备 uuid。因此 deviceId 不能硬编码到代码中。 目前不支持在开发者工具上进行蓝牙功能的调试，需要使用真机才能正常调用小程序蓝牙接口。 低功耗蓝牙（BLE）注意事项 iOS 上对特征值的 read、write、notify操作，由于系统需要获取特征值实例，传入的 serviceId 与 characteristicId 必须由 wx.getBLEDeviceServices 与 wx.getBLEDeviceCharacteristics 中获取到后才能使用。建议双平台统一在建立连接后先执行 wx.getBLEDeviceServices 与 wx.getBLEDeviceCharacteristics 后再进行与蓝牙设备的数据交互。 示例代码 在开发者工具中预览效果 蓝牙 蓝牙适配器模块生效周期为调用 wx.openBluetoothAdapter 至调用 wx.closeBluetoothAdapter 或小程序被销毁为止。 Project-Id-Version: wxadev 
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
 iOS 微信客户端 6.5.6 版本开始支持，Android 6.5.7 版本开始支持 在小程序蓝牙适配器模块生效期间，开发者才能够正常调用蓝牙相关的小程序 API，并收到蓝牙模块相关的事件回调。 注意 由于系统限制，Android 上获取到的 deviceId 为设备 MAC 地址，iOS 上则为设备 uuid。因此 deviceId 不能硬编码到代码中。 目前不支持在开发者工具上进行蓝牙功能的调试，需要使用真机才能正常调用小程序蓝牙接口。 低功耗蓝牙（BLE）注意事项 iOS 上对特征值的 read、write、notify操作，由于系统需要获取特征值实例，传入的 serviceId 与 characteristicId 必须由 wx.getBLEDeviceServices 与 wx.getBLEDeviceCharacteristics 中获取到后才能使用。建议双平台统一在建立连接后先执行 wx.getBLEDeviceServices 与 wx.getBLEDeviceCharacteristics 后再进行与蓝牙设备的数据交互。 示例代码 在开发者工具中预览效果 蓝牙 蓝牙适配器模块生效周期为调用 wx.openBluetoothAdapter 至调用 wx.closeBluetoothAdapter 或小程序被销毁为止。 