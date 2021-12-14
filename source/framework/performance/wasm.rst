:wxfrwk:`WXWebAssembly <performance/wasm>`
============================================


WXWebAssembly 类似于 Web 标准 WebAssembly，能够在一定程度上提高小程序的性能。

从基础库 v2.13.0 开始，小程序可以在全局访问并使用 WXWebAssembly 对象。

从基础库 v2.15.0 开始，小程序支持在 Worker 内使用 WXWebAssembly。

WXWebAssembly.instantiate(path, imports)
----------------------------------------------------

和标准 WebAssembly.instantiate 类似，差别是第一个参数只接受一个字符串类型的代码包路径，指向代码包内 .wasm 文件

与 WebAssembly 的异同
-------------------------

1. WXWebAssembly.instantiate(path, imports) 方法，path为代码包内路径（支持.wasm和.wasm.br后缀）
2. 支持 WXWebAssembly.Memory
3. 支持 WXWebAssembly.Table
4. 支持 WXWebAssembly.Global
5. export 支持函数、Memory、Table，iOS 平台暂不支持 Global

其他说明
-----------

- 关于 WebAssembly 的文档可以参考 https://webassembly.org/
- 基础库 v2.14.0 之后，新增了一些 WXWebAssembly 特性

  - 代码包路径允许传入 brotli 压缩的 wasm 文件，如 .wasm.br
  - 增加对 WXWebAssembly.Global 的支持

- 小程序插件从基础库 v2.18.1 开始支持 WXWebAssembly
- 在 Worker 内使用 WXWebAssembly 时，.wasm 文件需要放置在 worker 目录外，因为 worker 目录只会打包 .js 文件，非 .js 文件会被忽略
