��          �               <  g   =  .   �  4   �     	       G       _     a  H   c     �     �  w  �     B  G   `  .   �     �  m   �  w  V  g   �	  .   6
  4   e
     �
     �
  G  �
     �     �  H   �     =     V  w  [     �  G   �  .   9     h  m   y   "custom": true, "color": "#000000", "selectedColor": "#000000", "backgroundColor": "#000000", "list": [ "pagePath": "page/API/index", "text": "接口" "pagePath": "page/component/index", "text": "组件" "tabBar": { ] custom-tab-bar/index.js custom-tab-bar/index.json custom-tab-bar/index.wxml custom-tab-bar/index.wxss 3. 编写 tabBar 代码 用自定义组件的方式编写即可，该自定义组件完全接管 tabBar 的渲染。另外，自定义组件新增 getTabBar 接口，可获取当前页面下的自定义 tabBar 组件实例。 { } } 2. 添加 tabBar 代码文件 在代码根目录下添加入口文件: }, "usingComponents": {} }, { 为了保证低版本兼容以及区分哪些页面是 tab 页，tabBar 的相关配置项需完整声明，但这些字段不会作用于自定义 tabBar 的渲染。 此时需要开发者提供一个自定义组件来渲染 tabBar，所有 tabBar 的样式都由该自定义组件渲染。推荐用 fixed 在底部的 <cover-view> + <cover-image> 组件渲染样式，以保证 tabBar 层级相对较高。 与 tabBar 样式相关的接口，如 wx.setTabBarItem 等将失效。 每个 tab 页下的自定义 tabBar 组件实例是不同的，可通过自定义组件下的 getTabBar 接口，获取当前页面的自定义 tabBar 组件实例。 使用流程 1. 配置信息 在 app.json 中的 tabBar 项指定 custom 字段，同时其余 tabBar 相关配置也补充完整。 所有 tab 页的 json 里需声明 usingComponents 项，也可以在 app.json 全局开启。 示例： 在自定义 tabBar 模式下 基础库 2.5.0 开始支持，低版本需做 :ref:`compatibility` 。 示例代码 在开发者工具中预览效果 自定义 tabBar 自定义 tabBar 可以让开发者更加灵活地设置 tabBar 样式，以满足更多个性化的场景。 Project-Id-Version: wxadev 
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
 "custom": true, "color": "#000000", "selectedColor": "#000000", "backgroundColor": "#000000", "list": [ "pagePath": "page/API/index", "text": "接口" "pagePath": "page/component/index", "text": "组件" "tabBar": { ] custom-tab-bar/index.js custom-tab-bar/index.json custom-tab-bar/index.wxml custom-tab-bar/index.wxss 3. 编写 tabBar 代码 用自定义组件的方式编写即可，该自定义组件完全接管 tabBar 的渲染。另外，自定义组件新增 getTabBar 接口，可获取当前页面下的自定义 tabBar 组件实例。 { } } 2. 添加 tabBar 代码文件 在代码根目录下添加入口文件: }, "usingComponents": {} }, { 为了保证低版本兼容以及区分哪些页面是 tab 页，tabBar 的相关配置项需完整声明，但这些字段不会作用于自定义 tabBar 的渲染。 此时需要开发者提供一个自定义组件来渲染 tabBar，所有 tabBar 的样式都由该自定义组件渲染。推荐用 fixed 在底部的 <cover-view> + <cover-image> 组件渲染样式，以保证 tabBar 层级相对较高。 与 tabBar 样式相关的接口，如 wx.setTabBarItem 等将失效。 每个 tab 页下的自定义 tabBar 组件实例是不同的，可通过自定义组件下的 getTabBar 接口，获取当前页面的自定义 tabBar 组件实例。 使用流程 1. 配置信息 在 app.json 中的 tabBar 项指定 custom 字段，同时其余 tabBar 相关配置也补充完整。 所有 tab 页的 json 里需声明 usingComponents 项，也可以在 app.json 全局开启。 示例： 在自定义 tabBar 模式下 基础库 2.5.0 开始支持，低版本需做 :ref:`compatibility` 。 示例代码 在开发者工具中预览效果 自定义 tabBar 自定义 tabBar 可以让开发者更加灵活地设置 tabBar 样式，以满足更多个性化的场景。 