.. _dt-compilets:

:wxdt:`原生支持 TypeScript <compilets>`
==========================================


小程序代码包要求代码文件为 wxml / wxss / js / json / wxs。

如果我们希望使用 TypeScript 或 less 去开发小程序，就需要将 ts 文件或 less 文件编译成对应的 js 文件 或 wxss 文件，这个编译过程以前是需要开发者在工具外自行配置。

从开发者工具 1.05.2109101 以上开始，我们优化工具内置的编译模块，支持以编译插件的形式，扩展编译功能。

使用这种方式有两个好处：

1. 项目内只需要创建 ts 文件即可，无需再生成同名的 js 文件。less 文件同理。
2. 编译流程由开发者工具控制，按需编译，开发体验更好。

开始使用
-------------

旧项目
~~~~~~~~~

在 project.config.json 文件中，修改 setting 下的 useCompilerPlugins 字段为 ["typescript"]，即可开启工具内置的 typescript 编译插件。 如需同时开启 less 编译插件，可将该字段修改为 ["typescript", "less"]。 目前支持三个编译插件：typescript、less、sass

新建项目
~~~~~~~~~

可在创建小程序项目时，选择对应的语言模板。 目前支持的语言模板有

- TypeScript
- TypeScript + Less
- TypeScript + Sass

功能说明
----------

- 目前的 ts 代码转换成 js 代码的逻辑，是由 @babel/plugin-transform-typescript 插件进行处理的，
  因此在编译过程中，仅仅是移除了ts代码中类型声明等信息。
  类型错误这类信息，在编译过程是没有提示的，只在编辑器中给予提示的。
- 启用 typescript 编译插件后，js 文件也是支持的，如果存在同名的 ts 和 js 文件，则优先使用 ts 文件。
- 除了普通小程序，小程序插件开发也是支持的。
- miniprogram-ci 从 1.6.1 版本开始，也支持此功能。
