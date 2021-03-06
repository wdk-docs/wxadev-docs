��          �               �  $   �  �   �  $   �  Z   �  j   6  d   �  #     5   *     `     y     �  �   �      �     �  i   �  7   +     c  0   �  !   �  Q   �     (      C     d     y     �  w  �  $   	  �   ;	  $   
  Z   4
  j   �
  d   �
  #   _  5   �     �     �     �  �         �       i     7   �     �  0   �  !     Q   /     �      �     �     �     �   :wxfrwk:`多线程 Worker <workers>` Worker 与主线程之间的数据传输， 双方使用 :func:`Worker.postMessage()` 来发送数据， :func:`Worker.onMessage()` 来接收数据， 传输的数据并不是直接共享，而是被复制的。 Worker 内不支持 wx 系列的 API Worker 内代码只能 require 指定 Worker 路径内的文件，无法引用其它路径 Worker 最大并发数量限制为 1 个，创建下一个前请用 Worker.terminate() 结束当前 Worker Worker 的入口文件由 wx.createWorker() 时指定，开发者可动态指定 Worker 入口文件 Workers 之间不支持发送消息 worker 对象的其它接口请看 worker接口说明 workers/request/index.js workers/request/utils.js workers/response/index.js 一些异步处理的任务，可以放置于 Worker 中运行，待运行结束后， 再把结果返回到小程序主线程。 Worker 运行于一个单独的全局上下文与线程中，不能直接调用主线程的方法。 主线程向 Worker 发送消息 使用流程 在 app.json 中可配置 Worker 代码放置的目录，目录下的代码将被打包成一个文件： 在 workers/request/index.js 编写 Worker 响应代码 在主线程中初始化 Worker 在主线程的代码 app.js 中初始化 Worker 在开发者工具中预览效果 根据步骤 1 中的配置，在代码目录下新建以下两个入口文件： 添加 Worker 代码文件 添加后，目录结构如下:: 编写 Worker 代码 配置 Worker 信息 配置示例： Project-Id-Version: wxadev 
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
 :wxfrwk:`多线程 Worker <workers>` Worker 与主线程之间的数据传输， 双方使用 :func:`Worker.postMessage()` 来发送数据， :func:`Worker.onMessage()` 来接收数据， 传输的数据并不是直接共享，而是被复制的。 Worker 内不支持 wx 系列的 API Worker 内代码只能 require 指定 Worker 路径内的文件，无法引用其它路径 Worker 最大并发数量限制为 1 个，创建下一个前请用 Worker.terminate() 结束当前 Worker Worker 的入口文件由 wx.createWorker() 时指定，开发者可动态指定 Worker 入口文件 Workers 之间不支持发送消息 worker 对象的其它接口请看 worker接口说明 workers/request/index.js workers/request/utils.js workers/response/index.js 一些异步处理的任务，可以放置于 Worker 中运行，待运行结束后， 再把结果返回到小程序主线程。 Worker 运行于一个单独的全局上下文与线程中，不能直接调用主线程的方法。 主线程向 Worker 发送消息 使用流程 在 app.json 中可配置 Worker 代码放置的目录，目录下的代码将被打包成一个文件： 在 workers/request/index.js 编写 Worker 响应代码 在主线程中初始化 Worker 在主线程的代码 app.js 中初始化 Worker 在开发者工具中预览效果 根据步骤 1 中的配置，在代码目录下新建以下两个入口文件： 添加 Worker 代码文件 添加后，目录结构如下:: 编写 Worker 代码 配置 Worker 信息 配置示例： 