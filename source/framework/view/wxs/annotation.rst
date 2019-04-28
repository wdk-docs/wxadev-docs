.. _wxs-annotation:

:wxfrwk:`注释 <view/wxs/03annotation>`
============================================


WXS主要有3种注释的方法。

示例代码：

.. code:: html

  <!-- wxml -->
  <wxs module="sample">
    // 方法一：单行注释 /* 方法二：多行注释 */ /* 方法三：结尾注释。即从 /*
    开始往后的所有 WXS 代码均被注释 var a = 1; var b = 2; var c = "fake";
  </wxs>

上述例子中，所有WXS代码均被注释掉了。

.. attention:: 方法三和方法二的唯一区别是，没有*/结束符
