使用分包
==========

配置方法
假设支持分包的小程序目录结构如下：

├── app.js
├── app.json
├── app.wxss
├── packageA
│   └── pages
│       ├── cat
│       └── dog
├── packageB
│   └── pages
│       ├── apple
│       └── banana
├── pages
│   ├── index
│   └── logs
└── utils
开发者通过在 app.json subpackages 字段声明项目分包结构：

写成 subPackages 也支持。

{
  "pages": ["pages/index", "pages/logs"],
  "subpackages": [
    {
      "root": "packageA",
      "pages": ["pages/cat", "pages/dog"]
    },
    {
      "root": "packageB",
      "name": "pack2",
      "pages": ["pages/apple", "pages/banana"]
    }
  ]
}
subpackages 中，每个分包的配置有以下几项：

字段	类型	说明
root	String	分包根目录
name	String	分包别名，分包预下载时可以使用
pages	StringArray	分包页面路径，相对与分包根目录
independent	Boolean	分包是否是独立分包
打包原则
声明 subpackages 后，将按 subpackages 配置路径进行打包，subpackages 配置路径外的目录将被打包到 app（主包） 中
app（主包）也可以有自己的 pages（即最外层的 pages 字段）
subpackage 的根目录不能是另外一个 subpackage 内的子目录
tabBar 页面必须在 app（主包）内
引用原则
packageA 无法 require packageB JS 文件，但可以 require app、自己 package 内的 JS 文件
packageA 无法 import packageB 的 template，但可以 require app、自己 package 内的 template
packageA 无法使用 packageB 的资源，但可以使用 app、自己 package 内的资源
低版本兼容
由微信后台编译来处理旧版本客户端的兼容，后台会编译两份代码包，一份是分包后代码，另外一份是整包的兼容代码。 新客户端用分包，老客户端还是用的整包，完整包会把各个 subpackage 里面的路径放到 pages 中。

示例项目
下载 小程序示例（分包加载版）源码