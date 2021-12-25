:wxapi:`NodesRef`
============================================

.. class:: NodesRef

用于获取 WXML 节点信息的对象

方法

.. function:: NodesRef.fields(Object fields)

获取节点的相关信息。需要获取的字段在fields中指定。返回值是 nodesRef 对应的 selectorQuery

SelectorQuery

.. function:: NodesRef.boundingClientRect(NodesRef.boundingClientRectCallback callback)

添加节点的布局位置的查询请求。相对于显示区域，以像素为单位。其功能类似于 DOM 的 getBoundingClientRect。返回 NodesRef 对应的 SelectorQuery。

SelectorQuery

.. function:: NodesRef.scrollOffset(NodesRef.scrollOffsetCallback callback)

添加节点的滚动位置查询请求。以像素为单位。节点必须是 scroll-view 或者 viewport，返回 NodesRef 对应的 SelectorQuery。

SelectorQuery

.. function:: NodesRef.context(NodesRef.contextCallback callback)

添加节点的 Context 对象查询请求。目前支持 VideoContext、CanvasContext、LivePlayerContext 和 MapContext 的获取。
