:wxfrwk:`多线程 Worker <workers>`
=========================================

多线程 Worker
一些异步处理的任务，可以放置于 Worker 中运行，待运行结束后，再把结果返回到小程序主线程。Worker 运行于一个单独的全局上下文与线程中，不能直接调用主线程的方法。

Worker 与主线程之间的数据传输，双方使用 Worker.postMessage() 来发送数据，Worker.onMessage() 来接收数据，传输的数据并不是直接共享，而是被复制的。

使用流程
在开发者工具中预览效果

1. 配置 Worker 信息
在 app.json 中可配置 Worker 代码放置的目录，目录下的代码将被打包成一个文件：

配置示例：

{
  "workers": "workers"
}
2. 添加 Worker 代码文件
根据步骤 1 中的配置，在代码目录下新建以下两个入口文件：

workers/request/index.js
workers/request/utils.js
workers/response/index.js
添加后，目录结构如下：

├── app.js
├── app.json
├── project.config.json
└── workers
    ├── request
    │   ├── index.js
    │   └── utils.js
    └── response
        └── index.js
3. 编写 Worker 代码
在 workers/request/index.js 编写 Worker 响应代码

const utils = require('./utils')

// 在 Worker 线程执行上下文会全局暴露一个 worker 对象，直接调用 worker.onMeesage/postMessage 即可
worker.onMessage(function (res) {
  console.log(res)
})
4. 在主线程中初始化 Worker
在主线程的代码 app.js 中初始化 Worker

const worker = wx.createWorker('workers/request/index.js') // 文件名指定 worker 的入口文件路径，绝对路径
5. 主线程向 Worker 发送消息
worker.postMessage({
  msg: 'hello worker'
})
worker 对象的其它接口请看 worker接口说明

注意事项
Worker 最大并发数量限制为 1 个，创建下一个前请用 Worker.terminate() 结束当前 Worker
Worker 内代码只能 require 指定 Worker 路径内的文件，无法引用其它路径
Worker 的入口文件由 wx.createWorker() 时指定，开发者可动态指定 Worker 入口文件
Worker 内不支持 wx 系列的 API
Workers 之间不支持发送消息