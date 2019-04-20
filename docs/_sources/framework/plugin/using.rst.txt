使用插件
==========

添加插件
在使用插件前，首先要在小程序管理后台的“设置-第三方服务-插件管理”中添加插件。开发者可登录小程序管理后台，通过 appid 查找插件并添加。如果插件无需申请，添加后可直接使用；否则需要申请并等待插件开发者通过后，方可在小程序中使用相应的插件。

引入插件代码包
使用插件前，使用者要在 app.json 中声明需要使用的插件，例如：

代码示例：

{
  "plugins": {
    "myPlugin": {
      "version": "1.0.0",
      "provider": "wxidxxxxxxxxxxxxxxxx"
    }
  }
}
如上例所示， plugins 定义段中可以包含多个插件声明，每个插件声明以一个使用者自定义的插件引用名作为标识，并指明插件的 appid 和需要使用的版本号。其中，引用名（如上例中的 myPlugin）由使用者自定义，无需和插件开发者保持一致或与开发者协调。在后续的插件使用中，该引用名将被用于表示该插件。

在分包内引入插件代码包
如果插件只在一个分包内用到，可以将插件仅放在这个分包内，例如：

{
  "subpackages": [
    {
      "root": "packageA",
      "pages": ["pages/cat", "pages/dog"],
      "plugins": {
        "myPlugin": {
          "version": "1.0.0",
          "provider": "wxidxxxxxxxxxxxxxxxx"
        }
      }
    }
  ]
}
在分包内使用插件有如下限制：

仅能在这个分包内使用该插件；
同一个插件不能被多个分包同时引用；
目前，还不能从分包外的页面直接跳入分包内的插件页面，需要先跳入分包内的非插件页面、再跳入同一分包内的插件页面。
使用插件
使用插件时，插件的代码对于使用者来说是不可见的。为了正确使用插件，使用者应查看插件详情页面中的“开发文档”一节，阅读由插件开发者提供的插件开发文档，通过文档来明确插件提供的自定义组件、页面名称及提供的 js 接口规范等。

自定义组件
使用插件提供的自定义组件，和使用普通自定义组件的方式相仿。在 json 文件定义需要引入的自定义组件时，使用 plugin:// 协议指明插件的引用名和自定义组件名，例如：

代码示例：

{
  "usingComponents": {
    "hello-component": "plugin://myPlugin/hello-component"
  }
}
出于对插件的保护，插件提供的自定义组件在使用上有一定的限制：

默认情况下，页面中的 this.selectComponent 接口无法获得插件的自定义组件实例对象；
wx.createSelectorQuery 等接口的 >>> 选择器无法选入插件内部。
页面
插件的页面从小程序基础库版本 2.1.0 开始支持。

需要跳转到插件页面时，url 使用 plugin:// 前缀，形如 plugin://PLUGIN_NAME/PLUGIN_PAGE， 如：

代码示例：

<navigator url="plugin://myPlugin/hello-page">
  Go to pages/hello-page!
</navigator>
js 接口
使用插件的 js 接口时，可以使用 requirePlugin 方法。例如，插件提供一个名为 hello 的方法和一个名为 world 的变量，则可以像下面这样调用：

const myPluginInterface = requirePlugin('myPlugin')

myPluginInterface.hello()
const myWorld = myPluginInterface.world