��    =                    �     �       5   #  E   Y  �   �  �   T  P   �  �   (  >   �  9   �  �   )  Z   �  H   3     |  }   �  Y   	     `	  1   o	     �	  
   �	     �	     �	     �	     �	    �	        �       �     �  <   
     G     _     a  r   d    �     �  ?   �  $   4     Y  	   h  /   r     �  >   �     �  !   �  �     U   �  a    �   r  U   
  i   `  e   �  M   0  V   ~  G   �  8     C   V  H   �  �   �  .   o  w  �     !     0!  5   L!  E   �!  �   �!  �   }"  P    #  �   Q#  >   �#  9   $  �   R$  Z   %  H   \%     �%  }   �%  Y   /&     �&  1   �&     �&  
   �&     �&     �&     '     '    ''     ))  �  7)     .     .  <   3.     p.     �.     �.  r   �.     /     0  ?   0  $   ]0     �0  	   �0  /   �0     �0  >   �0     1  !   !1  �   C1  U   �1  a  92  �   �8  U   39  i   �9  e   �9  M   Y:  V   �:  G   �:  8   F;  C   ;  H   �;  �   <  .   �<   'A[0].B': 'myPrivateData' // 属性值变化时执行 // 属性定义（详情参见下文） properties: { // 更新属性和数据的方法与更新页面数据的方法类似 // 生命周期函数，可以为函数，或一个在methods段中定义的方法名 attached() { }, // 此处attached的声明会被lifetimes字段中的声明覆盖 ready() { }, // 生命周期函数，可以为函数，或一个在methods段中定义的方法名 attached() { }, moved() { }, detached() { }, // 组件所在页面的生命周期函数 show() { }, hide() { }, resize() { }, // 这个属性可以是 Number 、 String 、 Boolean 三种类型中的一种 type: Number, optionalTypes: [String, Object], value: 0 // 这里将 data.A[0].B 设为 'myPrivateData' this.setData({ :wxref:`创建自定义组件(Component) <api/Component>` <custom-comp min="1" max="5" /> 此时，由于自定义组件的对应属性被规定为 Number 类型， min 和 max 会被赋值为 1 和 5 ，而非 "1" 和 "5" ，即： Array  否       类似于mixins和traits的组件间代码复用机制，参见 behaviors Array  否       组件接受的外部样式类，参见 外部样式类 Component({ Object Map      否       一些选项（文档中介绍相关特性时会涉及具体的选项设置，这里暂不列举） Object Map      否       组件的对外属性，是属性名到属性设置的映射表 behaviors: [], data: {}, // 私有数据，可用于模板渲染 lifetimes: { methods: { min: { myProperty: { // 属性名 onMyButtonTap() { pageLifetimes: { properties 定义 定义段     类型      是否必填    描述      最低版本 type            是       属性的类型 optionalTypes   Array   否       属性的类型（可以指定多个）   2.6.5 value           否       属性的初始值 observer: 属性值变化时的回调函数 属性值的改变情况可以使用 observer 来监听。目前，在新版本基础库中不推荐使用这个字段，而是使用 Component 构造器的 observers 字段代替，它更加强大且性能更好。 properties: { this.data.min === 1 // true this.data.max === 5 // true Bug & Tips: 使用 this.data 可以获取内部数据和属性值，但不要直接修改它们，应使用 setData 修改。 生命周期函数无法在组件方法中通过 this 访问到。 属性名应避免以 data 开头，即不要命名成 dataXyz 这样的形式，因为在 WXML 中， data-xyz="" 会被作为节点 dataset 来处理，而不是组件属性。 在一个组件的定义和使用时，组件的属性名和 data 字段相互间都不能冲突（尽管它们位于不同的定义段中）。 从基础库 2.0.9 开始，对象类型的属性和 data 字段中可以包含函数类型的子字段，即可以通过对象类型的属性字段来传递函数。低于这一版本的基础库不支持这一特性。 bug : 对于 type 为 Object 或 Array 的属性，如果通过该组件自身的 this.setData 来改变属性值的一个子字段，则依旧会触发属性 observer ，且 observer 接收到的 newVal 是变化的那个子字段的值， oldVal 为空， changedPath 包含子字段的字段名相关信息。 bug : 位于 slot 中的自定义组件没有触发 pageLifetimes 中声明的页面生命周期，此问题在 2.5.2 中修复。 this.setData({ type: Number, value: 0 type: Number, value: 0, observer: function(newVal, oldVal) { type: String, value: '' } }) }) 属性的类型可以为 String Number Boolean Object Array 其一，也可以为 null 表示不限制类型。 }) 注意：在 properties 定义段中，属性名采用驼峰写法（propertyName）；在 wxml 中，指定属性值时则对应使用连字符写法（component-tag-name property-name="attr value"），应用于数据绑定时采用驼峰写法（attr="{{propertyName}}"）。 }, }, // 内部方法建议以下划线开头 _myPrivateMethod() { }, _propertyChange(newVal, oldVal) { }, lastLeaf: { }, min: { }, myProperty2: String // 简化的定义方式 代码示例： 创建自定义组件，接受一个 Object 类型的参数。 参数 在开发者工具中预览效果 多数情况下，属性最好指定一个确切的类型。这样，在 WXML 中以字面量指定属性值时，值可以获得一个确切的类型，如： 定义段过滤器，用于自定义组件扩展，参见 自定义组件扩展 2.2.3 属性名     类型      描述 is      String  组件的文件路径 id      String  节点id dataset String  节点dataset data    Object  组件数据，包括内部数据和属性值 properties      Object  组件数据，包括内部数据和属性值（与 data 一致） 方法名     参数      描述 setData Object newData  设置data并执行视图层渲染 hasBehavior     Object behavior 检查组件是否具有 behavior （检查时会递归检查被直接或间接引入的所有behavior） triggerEvent    String name, Object detail, Object options      触发事件，参见 组件间通信与事件 createSelectorQuery             创建一个 SelectorQuery 对象，选择器选取范围为这个组件实例内 createIntersectionObserver              创建一个 IntersectionObserver 对象，选择器选取范围为这个组件实例内 selectComponent String selector 使用选择器选择组件实例节点，返回匹配到的第一个组件实例对象（会被 wx://component-export 影响） selectAllComponents     String selector 使用选择器选择组件实例节点，返回匹配到的全部组件实例对象组成的数组 getRelationNodes        String relationKey      获取这个关系所对应的所有关联节点，参见 组件间关系 groupSetData    Function callback       立刻执行 callback ，其中的多个 setData 之间不会触发界面绘制（只有某些特殊场景中需要，如用于在不同组件同时 setData 时进行界面绘制同步） getTabBar       无       返回当前页面的 custom-tab-bar 的组件实例，详见自定义 tabBar 代码示例： 生成的组件实例可以在组件的方法、生命周期函数和属性 observer 中通过 this 访问。组件包含一些通用属性和方法。 组件所在页面的生命周期声明对象，参见 组件生命周期       2.2.3 组件数据字段监听器，用于监听 properties 和 data 的变化，参见 数据监听器   2.6.1 组件生命周期函数-在组件实例刚刚被创建时执行，注意此时不能调用 setData ) 组件生命周期函数-在组件实例被从页面节点树移除时执行) 组件生命周期函数-在组件实例被移动到节点树另一个位置时执行) 组件生命周期函数-在组件实例进入页面节点树时执行) 组件生命周期函数-在组件布局完成后执行) 组件生命周期声明对象，参见 组件生命周期    2.2.3 组件的内部数据，和 properties 一同用于组件的模板渲染 组件的方法，包括事件响应函数和任意的自定义方法，关于事件响应函数的使用，参见 组件间通信与事件 组件间关系定义，参见 组件间关系 Project-Id-Version: wxadev 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-09 22:55+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 'A[0].B': 'myPrivateData' // 属性值变化时执行 // 属性定义（详情参见下文） properties: { // 更新属性和数据的方法与更新页面数据的方法类似 // 生命周期函数，可以为函数，或一个在methods段中定义的方法名 attached() { }, // 此处attached的声明会被lifetimes字段中的声明覆盖 ready() { }, // 生命周期函数，可以为函数，或一个在methods段中定义的方法名 attached() { }, moved() { }, detached() { }, // 组件所在页面的生命周期函数 show() { }, hide() { }, resize() { }, // 这个属性可以是 Number 、 String 、 Boolean 三种类型中的一种 type: Number, optionalTypes: [String, Object], value: 0 // 这里将 data.A[0].B 设为 'myPrivateData' this.setData({ :wxref:`创建自定义组件(Component) <api/Component>` <custom-comp min="1" max="5" /> 此时，由于自定义组件的对应属性被规定为 Number 类型， min 和 max 会被赋值为 1 和 5 ，而非 "1" 和 "5" ，即： Array  否       类似于mixins和traits的组件间代码复用机制，参见 behaviors Array  否       组件接受的外部样式类，参见 外部样式类 Component({ Object Map      否       一些选项（文档中介绍相关特性时会涉及具体的选项设置，这里暂不列举） Object Map      否       组件的对外属性，是属性名到属性设置的映射表 behaviors: [], data: {}, // 私有数据，可用于模板渲染 lifetimes: { methods: { min: { myProperty: { // 属性名 onMyButtonTap() { pageLifetimes: { properties 定义 定义段     类型      是否必填    描述      最低版本 type            是       属性的类型 optionalTypes   Array   否       属性的类型（可以指定多个）   2.6.5 value           否       属性的初始值 observer: 属性值变化时的回调函数 属性值的改变情况可以使用 observer 来监听。目前，在新版本基础库中不推荐使用这个字段，而是使用 Component 构造器的 observers 字段代替，它更加强大且性能更好。 properties: { this.data.min === 1 // true this.data.max === 5 // true Bug & Tips: 使用 this.data 可以获取内部数据和属性值，但不要直接修改它们，应使用 setData 修改。 生命周期函数无法在组件方法中通过 this 访问到。 属性名应避免以 data 开头，即不要命名成 dataXyz 这样的形式，因为在 WXML 中， data-xyz="" 会被作为节点 dataset 来处理，而不是组件属性。 在一个组件的定义和使用时，组件的属性名和 data 字段相互间都不能冲突（尽管它们位于不同的定义段中）。 从基础库 2.0.9 开始，对象类型的属性和 data 字段中可以包含函数类型的子字段，即可以通过对象类型的属性字段来传递函数。低于这一版本的基础库不支持这一特性。 bug : 对于 type 为 Object 或 Array 的属性，如果通过该组件自身的 this.setData 来改变属性值的一个子字段，则依旧会触发属性 observer ，且 observer 接收到的 newVal 是变化的那个子字段的值， oldVal 为空， changedPath 包含子字段的字段名相关信息。 bug : 位于 slot 中的自定义组件没有触发 pageLifetimes 中声明的页面生命周期，此问题在 2.5.2 中修复。 this.setData({ type: Number, value: 0 type: Number, value: 0, observer: function(newVal, oldVal) { type: String, value: '' } }) }) 属性的类型可以为 String Number Boolean Object Array 其一，也可以为 null 表示不限制类型。 }) 注意：在 properties 定义段中，属性名采用驼峰写法（propertyName）；在 wxml 中，指定属性值时则对应使用连字符写法（component-tag-name property-name="attr value"），应用于数据绑定时采用驼峰写法（attr="{{propertyName}}"）。 }, }, // 内部方法建议以下划线开头 _myPrivateMethod() { }, _propertyChange(newVal, oldVal) { }, lastLeaf: { }, min: { }, myProperty2: String // 简化的定义方式 代码示例： 创建自定义组件，接受一个 Object 类型的参数。 参数 在开发者工具中预览效果 多数情况下，属性最好指定一个确切的类型。这样，在 WXML 中以字面量指定属性值时，值可以获得一个确切的类型，如： 定义段过滤器，用于自定义组件扩展，参见 自定义组件扩展 2.2.3 属性名     类型      描述 is      String  组件的文件路径 id      String  节点id dataset String  节点dataset data    Object  组件数据，包括内部数据和属性值 properties      Object  组件数据，包括内部数据和属性值（与 data 一致） 方法名     参数      描述 setData Object newData  设置data并执行视图层渲染 hasBehavior     Object behavior 检查组件是否具有 behavior （检查时会递归检查被直接或间接引入的所有behavior） triggerEvent    String name, Object detail, Object options      触发事件，参见 组件间通信与事件 createSelectorQuery             创建一个 SelectorQuery 对象，选择器选取范围为这个组件实例内 createIntersectionObserver              创建一个 IntersectionObserver 对象，选择器选取范围为这个组件实例内 selectComponent String selector 使用选择器选择组件实例节点，返回匹配到的第一个组件实例对象（会被 wx://component-export 影响） selectAllComponents     String selector 使用选择器选择组件实例节点，返回匹配到的全部组件实例对象组成的数组 getRelationNodes        String relationKey      获取这个关系所对应的所有关联节点，参见 组件间关系 groupSetData    Function callback       立刻执行 callback ，其中的多个 setData 之间不会触发界面绘制（只有某些特殊场景中需要，如用于在不同组件同时 setData 时进行界面绘制同步） getTabBar       无       返回当前页面的 custom-tab-bar 的组件实例，详见自定义 tabBar 代码示例： 生成的组件实例可以在组件的方法、生命周期函数和属性 observer 中通过 this 访问。组件包含一些通用属性和方法。 组件所在页面的生命周期声明对象，参见 组件生命周期       2.2.3 组件数据字段监听器，用于监听 properties 和 data 的变化，参见 数据监听器   2.6.1 组件生命周期函数-在组件实例刚刚被创建时执行，注意此时不能调用 setData ) 组件生命周期函数-在组件实例被从页面节点树移除时执行) 组件生命周期函数-在组件实例被移动到节点树另一个位置时执行) 组件生命周期函数-在组件实例进入页面节点树时执行) 组件生命周期函数-在组件布局完成后执行) 组件生命周期声明对象，参见 组件生命周期    2.2.3 组件的内部数据，和 properties 一同用于组件的模板渲染 组件的方法，包括事件响应函数和任意的自定义方法，关于事件响应函数的使用，参见 组件间通信与事件 组件间关系定义，参见 组件间关系 