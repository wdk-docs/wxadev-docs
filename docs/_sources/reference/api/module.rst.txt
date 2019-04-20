模块化
=========

Object module
---------------
当前模块对象

属性
属性	类型	说明
exports	Object	模块向外暴露的对象，使用require引用该模块时可以获取
示例代码

.. code:: js

  // common.js
  function sayHello(name) {
    console.log(`Hello ${name} !`)
  }
  function sayGoodbye(name) {
    console.log(`Goodbye ${name} !`)
  }

  module.exports.sayHello = sayHello
  exports.sayGoodbye = sayGoodbye

any require(string path)
----------------------------------------------------------------------

引入模块。返回模块通过 module.exports 或 exports 暴露的接口。

参数
名称	类型	说明
path	string	需要引入模块文件相对于当前文件的相对路径，或npm模块名，或npm模块路径。不支持绝对路径

示例代码

.. code:: js

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

Object exports
----------------------

module.exports 的引用

示例代码

.. code:: js

  // common.js
  function sayHello(name) {
    console.log(`Hello ${name} !`)
  }
  function sayGoodbye(name) {
    console.log(`Goodbye ${name} !`)
  }

  module.exports.sayHello = sayHello
  exports.sayGoodbye = sayGoodbye