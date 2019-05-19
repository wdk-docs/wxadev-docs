分包预下载
==========


   .. versionadded:: 2.3.0 低版本需做 :ref:`compatibility` 。 开发者工具请使用 1.02.1808300 及以上版本，可点此下载。

开发者可以通过配置，在进入小程序某个页面时，由框架自动预下载可能需要的分包，提升进入后续分包页面时的启动速度。对于独立分包，也可以预下载主包。

分包预下载目前只支持通过配置方式使用，暂不支持通过调用API完成。

vConsole 里有preloadSubpackages开头的日志信息，可以用来验证预下载的情况。

配置方法
预下载分包行为在进入某个页面时触发，通过在 app.json 增加 preloadRule 配置来控制。

{
  "pages": ["pages/index"],
  "subpackages": [
    {
      "root": "important",
      "pages": ["index"]
    },
    {
      "root": "sub1",
      "pages": ["index"]
    },
    {
      "name": "hello",
      "root": "path/to",
      "pages": ["index"]
    },
    {
      "root": "sub3",
      "pages": ["index"]
    },
    {
      "root": "indep",
      "pages": ["index"],
      "independent": true
    }
  ],
  "preloadRule": {
    "pages/index": {
      "network": "all",
      "packages": ["important"]
    },
    "sub1/index": {
      "packages": ["hello", "sub3"]
    },
    "sub3/index": {
      "packages": ["path/to"]
    },
    "indep/index": {
      "packages": ["__APP__"]
    }
  }
}
preloadRule 中，key 是页面路径，value 是进入此页面的预下载配置，每个配置有以下几项：

字段	类型	必填	默认值	说明
packages	StringArray	是	无	进入页面后预下载分包的 root 或 name。__APP__ 表示主包。
network	String	否	wifi	在指定网络下预下载，可选值为：
all: 不限网络
wifi: 仅wifi下预下载
限制
同一个分包中的页面享有共同的预下载大小限额 2M，限额会在工具中打包时校验。

如，页面 A 和 B 都在同一个分包中，A 中预下载总大小 0.5M 的分包，B中最多只能预下载总大小 1.5M 的分包。
