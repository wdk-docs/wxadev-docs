setInterval

:wxref:`require <api/require>`
===================================

any require(string path)
引入模块。返回模块通过 module.exports 或 exports 暴露的接口。

参数
名称	类型	说明
path	string	需要引入模块文件相对于当前文件的相对路径，或npm模块名，或npm模块路径。不支持绝对路径
示例代码
// common.js
function sayHello(name) {
  console.log(`Hello ${name} !`)
}
function sayGoodbye(name) {
  console.log(`Goodbye ${name} !`)
}

module.exports.sayHello = sayHello
exports.sayGoodbye = sayGoodbye
const common = require('common.js')
Page({
  helloMINA() {
    common.sayHello('MINA')
  },
  goodbyeMINA() {
    common.sayGoodbye('MINA')
  }
})