��          \               �   �  �   Q   V  �   �  �   P     �  	      y   
  w  �  �  �  Q   �  �     �   �     O	  	   _	  y   i	   exports 是 module.exports 的一个引用，因此在模块里边随意更改 exports 的指向会造成未知的错误。 所以更推荐开发者采用 module.exports 来暴露模块接口，除非你已经清晰知道这两者的关系。 小程序目前不支持直接引入 node_modules , 开发者需要使用到 node_modules 时候建议拷贝出相关的代码到小程序的目录中，或者使用小程序支持的 npm 功能。 ​在需要使用这些模块的文件中，使用 require 将公共代码引入 可以将一些公共的代码抽离成为一个单独的 js 文件，作为一个模块。模块只有通过 module.exports 或者 exports 才能对外暴露接口。 在 JavaScript 文件中声明的变量和函数只在该文件中有效；不同的文件中可以声明相同名字的变量和函数，不会互相影响。 文件作用域 模块化 通过全局函数 getApp 可以获取全局的应用实例，如果需要全局的数据可以在 App 中设置，如： Project-Id-Version: wxadev 
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
 exports 是 module.exports 的一个引用，因此在模块里边随意更改 exports 的指向会造成未知的错误。 所以更推荐开发者采用 module.exports 来暴露模块接口，除非你已经清晰知道这两者的关系。 小程序目前不支持直接引入 node_modules , 开发者需要使用到 node_modules 时候建议拷贝出相关的代码到小程序的目录中，或者使用小程序支持的 npm 功能。 ​在需要使用这些模块的文件中，使用 require 将公共代码引入 可以将一些公共的代码抽离成为一个单独的 js 文件，作为一个模块。模块只有通过 module.exports 或者 exports 才能对外暴露接口。 在 JavaScript 文件中声明的变量和函数只在该文件中有效；不同的文件中可以声明相同名字的变量和函数，不会互相影响。 文件作用域 模块化 通过全局函数 getApp 可以获取全局的应用实例，如果需要全局的数据可以在 App 中设置，如： 