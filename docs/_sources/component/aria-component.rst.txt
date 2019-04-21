.. _aria:


aria-component
===========================

无障碍访问

.. versionadded:: 2.5.0 为了更好地满足视障人士对于小程序的访问需求，支持部分ARIA标签。

无障碍特性在读屏模式下可以访问，iOS可通过设置->通用->辅助功能->旁白打开。

以 ``<view>`` 组件为例，增加了 *aria-role* 和 *aria-label* 属性。 其中 *aria-role* 表示组件的角色，
当设置为 `'img'` 时，读屏模式下聚焦后系统会朗读出 '图像' 。设置为 `'button'` 时，聚焦后后系统朗读出'按钮'。
aria-label表示组件附带的额外信息，聚焦后系统会自动朗读出来。

小程序内置组件已经预埋了一些无障碍的属性，以下组件开发者可以补充相关的属性：

- button
- input
- textarea
- checkbox
- switch
- radio
- slider
- picker-view
- scroll-view
- progress
- navigator
- image
- icon
- view
- cover-view
- cover-image
- map

.. tip::
   安卓和iOS读屏模式下设置aria-role后朗读的内容不同系统之间会有差异
   可设置的aria-role可参看 Using Aria中的Widget Roles，部分role的设置在移动端可能无效。
