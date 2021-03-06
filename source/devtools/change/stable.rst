稳定版 Stable Build 更新日志
==============================

  #. 1.02.1902010 Windows 64 、 Windows 32 、 macOS

2019.02.01
----------------------------------

  #. F 修复 界面调试样式信息显示不全的问题 反馈详情

2019.01.23
----------------------------------

  #. F 修复 1.02.1901221 引入的 app.json usingComponent 没有扩散的问题 反馈详情
  #. F 修复 长路径的项目无法正常打开的问题 反馈详情
  #. F 修复 1.02.1901170 引入的 win 版经常弹项目列表窗口的问题 反馈详情

2019.01.22
----------------------------------

  #. F 修复 1.02.1901170 引入的 wx.previewImage 无效的问题 反馈详情
  #. F 修复 1.02.1901170 引入的预览时报 pageJSON 错误的问题 反馈详情
  #. F 修复 1.02.1901170 引入的 win 版经常弹项目列表窗口的问题 反馈详情
  #. F 修复 1.02.1901170 引入的 tabBar selectIconPath 无效的问题 反馈详情
  #. F 修复 1.02.1901170 引入的小程序全屏模式存现返回按钮的问题 反馈详情
  #. F 修复 ext.json 中有效字段被误提示为无效字段的问题 反馈详情
  #. F 修复 wx.setStorage key 允许为空字符的问题
  #. F 修复 第三方平台命令行上传代码异常问题 反馈详情

2019.01.17
----------------------------------

  #. A 新增 自定义 tabbar 调试支持 详情
  #. A 新增 微信开发者·代码管理 详情
  #. A 新增 安全设置，CLI/HTTP 调用默认关闭，需要手动开启 详情
  #. A 新增 游客模式可以修改 appid
  #. U 优化 新建项目流程
  #. U 优化 开发者工具模态弹窗反馈的交互
  #. U 优化 app.json 和 page.json 的字段类型检查及无效字段提示
  #. F 修复 修改 appid 后云开发的本地缓存没有清理导致无法正确上传、下载代码的问题
  #. F 修复 设置系统代理失败后，界面还是显示为系统代理的问题
  #. F 修复 设置系统代理失败，Windows 版会有多次失败提示的问题
  #. F 修复 多帐号调试窗口丢失 AppData 调试面板的问题 反馈详情
  #. F 修复 macOS 复制失效的问题
  #. F 修复 界面调试样式信息显示不全的问题 反馈详情
  #. F 修复 WXML 面板不显示 media query 的问题 反馈详情
  #. F 修复 WXML 面板样式点一下就点不动的问题 反馈详情
  #. F 修复 在硬盘删除项目目录后重建，开发者工具无法监听到文件变更的问题
  #. F 修复 登录流程的部分错误情况没有错误提示的问题
  #. F 修复 分享时未触发 app.onHide 的问题 反馈详情
  #. F 修复 小游戏调试器无法显示 wx.downloadFile wx.uploadFile 的请求的问题
  #. F 修复 2.4.4 基础库开发者工具切后台报错的问题 反馈详情
  #. F 修复 小程序分包中使用插件的页面会丢失样式的问题

2018.12.27
----------------------------------

  #. Windows 64 、 Windows 32 、 macOS
  #.
  #. F 修复 1.02.1812260 引入的 first_column 的问题 反馈详情
  #. F 修复 getLocation 每次都会有授权弹窗的问题

2018.12.26
----------------------------------

  #. A 新增 app.json 支持 permission 字段
  #. A 新增 page.json 支持 navigationStyle 字段（仅对 2.4.3 基础库有效）
  #. F 修复 部分组件黑色主题样式问题
  #. F 修复 公众号网页调试没法打开外观设置的问题

2018.12.18
----------------------------------

  #. A 新增 黑色主题 详情
  #. A 新增 mDns 调试支持
  #. A 新增 模拟器在工具右侧展示
  #. A 新增 模拟器 Home 和 返回操作 反馈详情
  #. A 新增 <web-view> 支持 bindload/binderror
  #. A 新增 project.config.json 中 appid 支持修改
  #. A 新增 小游戏 game.json 配置项 deviceOrientation 支持 landscapeLeft/landscapeRight
  #. A 新增 小程序配置文件支持 pageOrientation 详情
  #. A 新增 CLI/HTTP 支持自动预览 详情
  #. U 优化 云函数上传时提示是否有未安装的依赖
  #. U 优化 当自定义编译条件过多时，点击打开自动定位到已选择的编译模式
  #. U 优化 自定义编译条件支持方向键操作
  #. F 修复 小程序分包会加载两次 app.wxss 的问题 反馈详情
  #. F 修复 app.json 中写入 extAppid 导致异常的问题
  #. F 修复 macOS 版工具会出现 command + s 无法保存的问题 反馈详情
  #. F 修复 分包中的插件引用自身资源加载失败的问题
  #. F 修复 分包预加载阶段时 app.js 被执行的问题 反馈详情
  #. F 修复 小游戏分包中的 game.js 为空文件上传会报错的问题
  #. F 修复 未打开工具时点击代码片段链接无法自动拉起工具的问题
  #. F 修复 公众号网页调试的调试器无法弹出的问题
  #. F 修复 Windows 版任务栏图标丢失的问题
  #. F 修复 Page.onTabItemTap 只有第一次触发的问题 反馈详情
  #. F 修复 页面没有 json 文件的时，app.json 的 usingComponents 没有在该页面生效的问题 反馈详情
  #. F 修复 cli 发生错误时进程退出码为 0 的问题
