:wxref:`Behavior <api/Behavior>`
===================================

.. class:: Behavior(Object object)

  注册一个 behavior，接受一个 Object 类型的参数。

  :param Object properties: Map	否	同组件的属性
  :param Object data: 同组件的数据
  :param Object methods: 同自定义组件的方法
  :param String behaviors:	 Array	否	引入其它的 behavior
  :param function created: 生命周期函数
  :param function attached: 生命周期函数
  :param function ready: 生命周期函数
  :param function moved: 生命周期函数
  :param function detached: 生命周期函数

  :示例:

    .. code::

      // my-behavior.js
      module.exports = Behavior({
        behaviors: [],
        properties: {
          myBehaviorProperty: {
            type: String
          }
        },
        data: {
          myBehaviorData: {}
        },
        attached() {},
        methods: {
          myBehaviorMethod() {}
        }
      })

