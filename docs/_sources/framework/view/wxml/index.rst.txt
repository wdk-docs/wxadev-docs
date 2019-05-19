.. _wxml:

:wxfrwk:`WXML <view/wxml/index>`
======================================

版本:|release| 更新:|today|

WXML（WeiXin Markup Language）是框架设计的一套标签语言，结合基础组件、事件系统，可以构建出页面的结构。

要完整了解 WXML 语法，请参考WXML 语法参考。

用以下一些简单的例子来看看 WXML 具有什么能力：

**数据绑定**

.. code:: html

  <!--wxml-->
  <view>{{message}}</view>

.. code:: js

  // page.js
  Page({
    data: {
      message: 'Hello MINA!'
    }
  })

**列表渲染**

.. code:: html

  <!--wxml-->
  <view wx:for="{{array}}">{{item}}</view>

.. code:: js

  // page.js
  Page({
    data: {
      array: [1, 2, 3, 4, 5]
    }
  })

**条件渲染**

.. code:: html

  <!--wxml-->
  <view wx:if="{{view == 'WEBVIEW'}}">WEBVIEW</view>
  <view wx:elif="{{view == 'APP'}}">APP</view>
  <view wx:else="{{view == 'MINA'}}">MINA</view>

.. code:: js

  // page.js
  Page({
    data: {
      view: 'MINA'
    }
  })

**模板**

.. code:: html

  <!--wxml-->
  <template name="staffName">
    <view>
      FirstName: {{firstName}}, LastName: {{lastName}}
    </view>
  </template>

  <template is="staffName" data="{{...staffA}}"></template>
  <template is="staffName" data="{{...staffB}}"></template>
  <template is="staffName" data="{{...staffC}}"></template>

.. code:: js

  // page.js
  Page({
    data: {
      staffA: {firstName: 'Hulk', lastName: 'Hu'},
      staffB: {firstName: 'Shang', lastName: 'You'},
      staffC: {firstName: 'Gideon', lastName: 'Lin'}
    }
  })


具体的能力以及使用方式在以下章节查看：

.. :ref:`wxml-data` 、
.. :ref:`wxml-list` 、
.. :ref:`wxml-conditional` 、
.. :ref:`wxml-template` 、
.. :ref:`wxml-import` 、
.. :ref:`wxml-event`

.. toctree::
   :maxdepth: 2

   data
   list
   conditional
   template
   import
   event
