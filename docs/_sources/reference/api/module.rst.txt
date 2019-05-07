模块化
=========

.. class:: module

  当前模块对象

  :rtype: Object



.. attribute:: module.exports

  模块向外暴露的对象，使用require引用该模块时可以获取

  :rtype: Object
  :示例:

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


.. function:: exports

  :label: module.exports 的引用
  :rtype: Object
  :示例:

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


.. function:: require(path)

  引入模块。返回模块通过 module.exports 或 exports 暴露的接口。

  :param string path:	需要引入模块文件相对于当前文件的相对路径，或npm模块名，或npm模块路径。不支持绝对路径
  :rtype: any
  :示例:

    .. code::

      // common.js
      function sayHello(name) {
        console.log(`Hello ${name} !`)
      }
      function sayGoodbye(name) {
        console.log(`Goodbye ${name} !`)
      }

      module.exports.sayHello = sayHello
      exports.sayGoodbye = sayGoodbye

    .. code::

      const common = require('common.js')
      Page({
        helloMINA() {
          common.sayHello('MINA')
        },
        goodbyeMINA() {
          common.sayGoodbye('MINA')
        }
      })
