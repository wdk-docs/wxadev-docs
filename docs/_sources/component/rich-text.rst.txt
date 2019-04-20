rich-text
===========================

.. versionadded:: 1.4.0 开始支持，低版本需做兼容处理。

富文本。

属性	类型	默认值	必填	说明	最低版本
nodes	array/string	[]	否	节点列表/HTML String	1.4.0
space	string		否	显示连续空格	2.4.1
space 的合法值

值	说明	最低版本
ensp	中文字符空格一半大小
emsp	中文字符空格大小
nbsp	根据字体设置的空格大小
nodes
现支持两种节点，通过type来区分，分别是元素节点和文本节点，默认是元素节点，在富文本区域里显示的HTML节点 元素节点：type = node*

属性	说明	类型	必填	备注
name	标签名	string	是	支持部分受信任的 HTML 节点
attrs	属性	object	否	支持部分受信任的属性，遵循 Pascal 命名法
children	子节点列表	array	否	结构和 nodes 一致
文本节点：type = text*

属性	说明	类型	必填	备注
text	文本	string	是	支持entities
受信任的HTML节点及属性
全局支持class和style属性，不支持id属性。

节点	属性
a
abbr
b
blockquote
br
code
col	span，width
colgroup	span，width
dd
del
div
dl
dt
em
fieldset
h1
h2
h3
h4
h5
h6
hr
i
img	alt，src，height，width
ins
label
legend
li
ol	start，type
p
q
span
strong
sub
sup
table	width
tbody
td	colspan，height，rowspan，width
tfoot
th	colspan，height，rowspan，width
thead
tr
ul
Bug & Tip
.. tip:: nodes 不推荐使用 String 类型，性能会有所下降。
.. tip:: rich-text 组件内屏蔽所有节点的事件。
.. tip:: attrs 属性不支持 id ，支持 class 。
.. tip:: name 属性大小写不敏感。
.. tip:: 如果使用了不受信任的HTML节点，该节点及其所有子节点将会被移除。
.. tip:: img 标签仅支持网络图片。
.. tip:: 如果在自定义组件中使用 rich-text 组件，那么仅自定义组件的 wxss 样式对 rich-text 中的 class 生效。
示例代码
在开发者工具中预览效果

.. code:: html

  <rich-text nodes="{{nodes}}" bindtap="tap"></rich-text>
  Page({
    data: {
      nodes: [{
        name: 'div',
        attrs: {
          class: 'div_class',
          style: 'line-height: 60px; color: red;'
        },
        children: [{
          type: 'text',
          text: 'Hello&nbsp;World!'
        }]
      }]
    },
    tap() {
      console.log('tap')
    }
  })