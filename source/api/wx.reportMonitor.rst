:wxapi:`wx.reportMonitor`
===============

.. function:: wx.reportMonitor(string name, number value)

基础库 2.0.1 开始支持，低版本需做兼容处理。

自定义业务数据监控上报接口。

参数
string name
监控ID，在「小程序管理后台」新建数据指标后获得

number value
上报数值，经处理后会在「小程序管理后台」上展示每分钟的上报总量

使用说明
使用前，需要在「小程序管理后台-运维中心-性能监控-业务数据监控」中新建监控事件，配置监控描述与告警类型。每一个监控事件对应唯一的监控ID，开发者最多可以创建128个监控事件。

示例代码
wx.reportMonitor('1', 1)
