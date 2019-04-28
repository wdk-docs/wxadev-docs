.. _wxml-import:

:wxfrwk:`import 引用 <view/wxml/import>`
=====================================

WXML 提供两种文件引用方式import和include。

import
-------------------

import可以在该文件中使用目标文件定义的template，如：

在 item.wxml 中定义了一个叫item的template：

.. code:: html

  <!-- item.wxml -->
  <template name="item">
    <text>{{text}}</text>
  </template>

在 index.wxml 中引用了 item.wxml，就可以使用item模板：

.. code:: html

  <import src="item.wxml" />
  <template is="item" data="{{text: 'forbar'}}" />

import 的作用域
-------------------

import 有作用域的概念，即只会 import 目标文件中定义的 template，而不会 import 目标文件 import 的 template。

如：C import B，B import A，在C中可以使用B定义的template，
在B中可以使用A定义的template，但是C不能使用A定义的template。

.. code:: html

  <!-- A.wxml -->
  <template name="A">
    <text>A template</text>
  </template>
  <!-- B.wxml -->
  <import src="a.wxml" />
  <template name="B">
    <text>B template</text>
  </template>
  <!-- C.wxml -->
  <import src="b.wxml" />
  <template is="A" />
  <!-- Error! Can not use tempalte when not import A. -->
  <template is="B" />

include
-------------------

include 可以将目标文件除了 <template/> <wxs/> 外的整个代码引入，相当于是拷贝到 include 位置，如：

.. code:: html

  <!-- index.wxml -->
  <include src="header.wxml" />
  <view>body</view>
  <include src="footer.wxml" />
  <!-- header.wxml -->
  <view>header</view>
  <!-- footer.wxml -->
  <view>footer</view>