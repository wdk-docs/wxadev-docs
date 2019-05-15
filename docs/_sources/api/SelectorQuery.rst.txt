:wxapi:`SelectorQuery`
============================================

.. class:: SelectorQuery

   查询节点信息的对象

方法
---------

SelectorQuery

.. function:: SelectorQuery.in(Component component)

   将选择器的选取范围更改为自定义组件 component 内。（初始时，选择器仅选取页面范围的节点，不会选取任何自定义组件中的节点）。

NodesRef

.. function:: SelectorQuery.select(string selector)

   在当前页面下选择第一个匹配选择器 selector 的节点。返回一个 NodesRef 对象实例，可以用于获取节点信息。

NodesRef

.. function:: SelectorQuery.selectAll(string selector)

   在当前页面下选择匹配选择器 selector 的所有节点。

NodesRef

.. function:: SelectorQuery.selectViewport()

   选择显示区域。可用于获取显示区域的尺寸、滚动位置等信息。

NodesRef

.. function:: SelectorQuery.exec(function callback)

   执行所有的请求。请求结果按请求次序构成数组，在callback的第一个参数中返回。
