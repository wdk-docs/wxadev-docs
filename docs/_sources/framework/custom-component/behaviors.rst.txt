:wxfrwk:`behaviors <custom-component/behaviors>`
========================================================


behaviors 是用于组件间代码共享的特性，类似于一些编程语言中的“mixins”或“traits”。

每个 behavior 可以包含一组属性、数据、生命周期函数和方法。组件引用它时，它的属性、数据和方法会被合并到组件中，生命周期函数也会在对应时机被调用。 每个组件可以引用多个 behavior ，behavior 也可以引用其他 behavior 。

详细的参数含义和使用请参考 Behavior 参考文档。

组件中使用
----------------------------------------------------------

组件引用时，在 behaviors 定义段中将它们逐个列出即可。

代码示例：

在开发者工具中预览效果

.. code::

  // my-component.js
  const myBehavior = require('my-behavior')
  Component({
    behaviors: [myBehavior],
    properties: {
      myProperty: {
        type: String
      }
    },
    data: {
      myData: {}
    },
    attached() {},
    methods: {
      myMethod() {}
    }
  })

在上例中， my-component 组件定义中加入了 my-behavior ，而 my-behavior 中包含有 myBehaviorProperty 属性、 myBehaviorData 数据字段、 myBehaviorMethod 方法和一个 attached 生命周期函数。这将使得 my-component 中最终包含 myBehaviorProperty 、 myProperty 两个属性， myBehaviorData 、 myData 两个数据字段，和 myBehaviorMethod 、 myMethod 两个方法。当组件触发 attached 生命周期时，会依次触发 my-behavior 中的 attached 生命周期函数和 my-component 中的 attached 生命周期函数。

字段的覆盖和组合规则
----------------------------------------------------------

组件和它引用的 behavior 中可以包含同名的字段，对这些字段的处理方法如下：

如果有同名的属性或方法，组件本身的属性或方法会覆盖 behavior 中的属性或方法，如果引用了多个 behavior ，在定义段中靠后 behavior 中的属性或方法会覆盖靠前的属性或方法；
如果有同名的数据字段，如果数据是对象类型，会进行对象合并，如果是非对象类型则会进行相互覆盖；
生命周期函数不会相互覆盖，而是在对应触发时机被逐个调用。如果同一个 behavior 被一个组件多次引用，它定义的生命周期函数只会被执行一次。

内置 behaviors
----------------------------------------------------------

自定义组件可以通过引用内置的 behavior 来获得内置组件的一些行为。

代码示例：

在开发者工具中预览效果

.. code::

  Component({
    behaviors: ['wx://form-field']
  })

在上例中， wx://form-field 代表一个内置 behavior ，它使得这个自定义组件有类似于表单控件的行为。

内置 behavior 往往会为组件添加一些属性。在没有特殊说明时，组件可以覆盖这些属性来改变它的 type 或添加 observer 。

.. code::

  wx://form-field

使自定义组件有类似于表单控件的行为。 form 组件可以识别这些自定义组件，并在 submit 事件中返回组件的字段名及其对应字段值。这将为它添加以下两个属性。

属性名	类型	描述	最低版本
name	String	在表单中的字段名	1.6.7
value	任意	在表单中的字段值	1.6.7
wx://component-export
在开发者工具中预览效果

从基础库版本 2.2.3 开始提供支持。

使自定义组件支持 export 定义段。这个定义段可以用于指定组件被 selectComponent 调用时的返回值。

未使用这个定义段时， selectComponent 将返回自定义组件的 this （插件的自定义组件将返回 null ）。使用这个定义段时，将以这个定义段的函数返回值代替。

代码示例：

.. code::

  // 自定义组件 my-component 内部
  Component({
    behaviors: ['wx://component-export'],
    export() {
      return {myField: 'myValue'}
    }
  })

.. code:: html

  <!-- 使用自定义组件时 -->
  <my-component id="the-id" />

.. code:: js

  this.selectComponent('#the-id') // 等于 { myField: 'myValue' }
