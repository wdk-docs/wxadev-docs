组件模板和样式
=============

类似于页面，自定义组件拥有自己的 wxml 模板和 wxss 样式。

组件模板
组件模板的写法与页面模板相同。组件模板与组件数据结合后生成的节点树，将被插入到组件的引用位置上。

在组件模板中可以提供一个 <slot> 节点，用于承载组件引用时提供的子节点。

代码示例：

在开发者工具中预览效果

<!-- 组件模板 -->
<view class="wrapper">
  <view>这里是组件的内部节点</view>
  <slot></slot>
</view>
<!-- 引用组件的页面模板 -->
<view>
  <component-tag-name>
    <!-- 这部分内容将被放置在组件 <slot> 的位置上 -->
    <view>这里是插入到组件slot中的内容</view>
  </component-tag-name>
</view>
注意，在模板中引用到的自定义组件及其对应的节点名需要在 json 文件中显式定义，否则会被当作一个无意义的节点。除此以外，节点名也可以被声明为抽象节点。

模板数据绑定
与普通的 WXML 模板类似，可以使用数据绑定，这样就可以向子组件的属性传递动态数据。

代码示例：

<!-- 引用组件的页面模板 -->
<view>
  <component-tag-name prop-a="{{dataFieldA}}" prop-b="{{dataFieldB}}">
    <!-- 这部分内容将被放置在组件 <slot> 的位置上 -->
    <view>这里是插入到组件slot中的内容</view>
  </component-tag-name>
</view>
在以上例子中，组件的属性 propA 和 propB 将收到页面传递的数据。页面可以通过 setData 来改变绑定的数据字段。

注意：这样的数据绑定只能传递 JSON 兼容数据。自基础库版本 2.0.9 开始，还可以在数据中包含函数（但这些函数不能在 WXML 中直接调用，只能传递给子组件）。

组件wxml的slot
在组件的wxml中可以包含 slot 节点，用于承载组件使用者提供的wxml结构。

默认情况下，一个组件的wxml中只能有一个slot。需要使用多slot时，可以在组件js中声明启用。

Component({
  options: {
    multipleSlots: true // 在组件定义时的选项中启用多slot支持
  },
  properties: { /* ... */ },
  methods: { /* ... */ }
})
此时，可以在这个组件的wxml中使用多个slot，以不同的 name 来区分。

<!-- 组件模板 -->
<view class="wrapper">
  <slot name="before"></slot>
  <view>这里是组件的内部细节</view>
  <slot name="after"></slot>
</view>
使用时，用 slot 属性来将节点插入到不同的slot上。

<!-- 引用组件的页面模板 -->
<view>
  <component-tag-name>
    <!-- 这部分内容将被放置在组件 <slot name="before"> 的位置上 -->
    <view slot="before">这里是插入到组件slot name="before"中的内容</view>
    <!-- 这部分内容将被放置在组件 <slot name="after"> 的位置上 -->
    <view slot="after">这里是插入到组件slot name="after"中的内容</view>
  </component-tag-name>
</view>
组件样式
组件对应 wxss 文件的样式，只对组件wxml内的节点生效。编写组件样式时，需要注意以下几点：

组件和引用组件的页面不能使用id选择器（#a）、属性选择器（[a]）和标签名选择器，请改用class选择器。
组件和引用组件的页面中使用后代选择器（.a .b）在一些极端情况下会有非预期的表现，如遇，请避免使用。
子元素选择器（.a>.b）只能用于 view 组件与其子节点之间，用于其他组件可能导致非预期的情况。
继承样式，如 font 、 color ，会从组件外继承到组件内。
除继承样式外， app.wxss 中的样式、组件所在页面的的样式对自定义组件无效。
#a {
} /* 在组件中不能使用 */
[a] {
} /* 在组件中不能使用 */
button {
} /* 在组件中不能使用 */
.a > .b {
} /* 除非 .a 是 view 组件节点，否则不一定会生效 */
除此以外，组件可以指定它所在节点的默认样式，使用 :host 选择器（需要包含基础库 1.7.2 或更高版本的开发者工具支持）。

代码示例：

在开发者工具中预览效果

/* 组件 custom-component.wxss */
:host {
  color: yellow;
}
<!-- 页面的 WXML -->
<custom-component>这段文本是黄色的</custom-component>
外部样式类
有时，组件希望接受外部传入的样式类。此时可以在 Component 中用 externalClasses 定义段定义若干个外部样式类。这个特性从小程序基础库版本 1.9.90 开始支持。

这个特性可以用于实现类似于 view 组件的 hover-class 属性：页面可以提供一个样式类，赋予 view 的 hover-class ，这个样式类本身写在页面中而非 view 组件的实现中。

注意：在同一个节点上使用普通样式类和外部样式类时，两个类的优先级是未定义的，因此最好避免这种情况。

代码示例：

/* 组件 custom-component.js */
Component({
  externalClasses: ['my-class']
})
<!-- 组件 custom-component.wxml -->
<custom-component class="my-class">
  这段文本的颜色由组件外的 class 决定
</custom-component>
这样，组件的使用者可以指定这个样式类对应的 class ，就像使用普通属性一样。

代码示例：

在开发者工具中预览效果

<!-- 页面的 WXML -->
<custom-component my-class="red-text" />
.red-text {
  color: red;
}
使组件接受全局样式
默认情况下，自定义组件的样式只受到自定义组件 wxss 的影响。除非以下两种情况：

app.wxss 或页面的 wxss 中使用了标签名选择器（或一些其他特殊选择器）来直接指定样式，这些选择器会影响到页面和全部组件。通常情况下这是不推荐的做法。
在特定的自定义组件激活了 addGlobalClass 选项，这使得这个自定义组件能被 app.wxss 或页面的 wxss 中的所有的样式定义影响。
要激活 addGlobalClass 选项，只需要在 Component 构造器中将 options.addGlobalClass 字段置为 true 。这个特性从小程序基础库版本 2.2.3 开始支持。

注意：当激活了 addGlobalClass 选项后，存在外部样式污染组件样式的风险，请谨慎选择。

代码示例：

在开发者工具中预览效果

/* 组件 custom-component.js */
Component({
  options: {
    addGlobalClass: true,
  }
})
<!-- 组件 custom-component.wxml -->
<text class="red-text">
  这段文本的颜色由 `app.wxss` 和页面 `wxss` 中的样式定义来决定
</text>
/* app.wxss */
.red-text {
  color: red;
}