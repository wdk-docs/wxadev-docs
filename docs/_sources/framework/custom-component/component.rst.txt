
:wxfrwk:`Component构造器 <custom-component/component>`
====================================================================

Component 构造器可用于定义组件，调用 Component 构造器时可以指定组件的属性、数据、方法等。

详细的参数含义和使用请参考 Component 参考文档。

.. code:: js

  Component({

    behaviors: [],

    properties: {
      myProperty: { // 属性名
        type: String,
        value: ''
      },
      myProperty2: String // 简化的定义方式
    },

    data: {}, // 私有数据，可用于模板渲染

    lifetimes: {
      // 生命周期函数，可以为函数，或一个在methods段中定义的方法名
      attached() { },
      moved() { },
      detached() { },
    },

    // 生命周期函数，可以为函数，或一个在methods段中定义的方法名
    attached() { }, // 此处attached的声明会被lifetimes字段中的声明覆盖
    ready() { },

    pageLifetimes: {
      // 组件所在页面的生命周期函数
      show() { },
      hide() { },
      resize() { },
    },

    methods: {
      onMyButtonTap() {
        this.setData({
          // 更新属性和数据的方法与更新页面数据的方法类似
        })
      },
      // 内部方法建议以下划线开头
      _myPrivateMethod() {
        // 这里将 data.A[0].B 设为 'myPrivateData'
        this.setData({
          'A[0].B': 'myPrivateData'
        })
      },
      _propertyChange(newVal, oldVal) {

      }
    }

  })

使用 Component 构造器构造页面
----------------------------------------------------------

事实上，小程序的页面也可以视为自定义组件。因而，页面也可以使用 Component 构造器构造，拥有与普通组件一样的定义段与实例方法。但此时要求对应 json 文件中包含 usingComponents 定义段。

此时，组件的属性可以用于接收页面的参数，如访问页面 /pages/index/index?paramA=123&paramB=xyz ，如果声明有属性 paramA 或 paramB ，则它们会被赋值为 123 或 xyz 。

页面的生命周期方法（即 on 开头的方法），应写在 methods 定义段中。

代码示例：

.. code:: json

  {
    "usingComponents": {}
  }

.. code::

  Component({

    properties: {
      paramA: Number,
      paramB: String,
    },

    methods: {
      onLoad() {
        this.data.paramA // 页面参数 paramA 的值
        this.data.paramB // 页面参数 paramB 的值
      }
    }

  })
