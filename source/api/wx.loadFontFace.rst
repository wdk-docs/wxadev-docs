:wxapi:`wx.loadFontFace`
===========================

.. function:: wx.loadFontFace(Object object)


   .. versionadded:: 2.1.0 低版本需做 :ref:`compatibility` 。

动态加载网络字体。文件地址需为下载类型。iOS 仅支持 https 格式文件地址。

注意：

引入中文字体，体积过大时会发生错误，建议抽离出部分中文，减少体积，或者用图片替代
字体链接必须是https（ios不支持http)
字体链接必须是同源下的，或开启了cors支持，小程序的域名是servicewechat.com
canvas等原生组件不支持使用接口添加的字体
工具里提示 Faild to load font可以忽略
参数
Object object
属性	类型	默认值	必填	说明
family	string		是	定义的字体名称
source	string		是	字体资源的地址。建议格式为 TTF 和 WOFF，WOFF2 在低版本的iOS上会不兼容。
desc	Object		否	可选的字体描述符
success	function		否	接口调用成功的回调函数
fail	function		否	接口调用失败的回调函数
complete	function		否	接口调用结束的回调函数（调用成功、失败都会执行）
object.desc 的结构

属性	类型	默认值	必填	说明
style	string	'normal'	否	字体样式，可选值为 normal / italic / oblique
weight	string	'normal'	否	字体粗细，可选值为 normal / bold / 100 / 200../ 900
variant	string	'normal'	否	设置小型大写字母的字体显示文本，可选值为 normal / small-caps / inherit
示例代码
在开发者工具中预览效果

wx.loadFontFace({
  family: 'Bitstream Vera Serif Bold',
  source: 'url("https://sungd.github.io/Pacifico.ttf")',
  success: console.log
})
