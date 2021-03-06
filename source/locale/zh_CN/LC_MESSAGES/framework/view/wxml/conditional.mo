��          �               �   4   �   ~   "     �     �     �  �   �  <   �  �   �  �   w  �   b  Z   +  o   �  w  �  4   n  ~   �     "     .     4  �   D  <    	  �   ]	  �   �	  �   �
  Z   �  o      :wxfrwk:`wx:if 条件渲染 <view/wxml/conditional>` <block/> 并不是一个组件，它仅仅是一个包装元素，不会在页面中做任何渲染，只接受控制属性。 block wx:if wx:if wx:if vs hidden 一般来说，wx:if 有更高的切换消耗而 hidden 有更高的初始渲染消耗。因此，如果需要频繁切换的情景下， 用 hidden 更好，如果在运行时条件不大可能改变则 wx:if 较好。 也可以用 wx:elif 和 wx:else 来添加一个 else 块： 同时 wx:if 也是惰性的，如果在初始渲染条件为 false，框架什么也不做，在条件第一次变成真的时候才开始局部渲染。 因为 ``wx:if`` 是一个控制属性，需要将它添加到一个标签上。如果要一次性判断多个组件标签， 可以使用一个 ``<block/>`` 标签将多个组件包装起来，并在上边使用 wx:if 控制属性。 因为 wx:if 之中的模板也可能包含数据绑定，所以当 wx:if 的条件值切换时，框架有一个局部渲染的过程，因为它会确保条件块在切换时销毁或重新渲染。 在框架中，使用 ``wx:if="{{condition}}"`` 来判断是否需要渲染该代码块： 相比之下， ``hidden`` 就简单的多，组件始终会被渲染，只是简单的控制显示与隐藏。 Project-Id-Version: wxadev 
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
 :wxfrwk:`wx:if 条件渲染 <view/wxml/conditional>` <block/> 并不是一个组件，它仅仅是一个包装元素，不会在页面中做任何渲染，只接受控制属性。 block wx:if wx:if wx:if vs hidden 一般来说，wx:if 有更高的切换消耗而 hidden 有更高的初始渲染消耗。因此，如果需要频繁切换的情景下， 用 hidden 更好，如果在运行时条件不大可能改变则 wx:if 较好。 也可以用 wx:elif 和 wx:else 来添加一个 else 块： 同时 wx:if 也是惰性的，如果在初始渲染条件为 false，框架什么也不做，在条件第一次变成真的时候才开始局部渲染。 因为 ``wx:if`` 是一个控制属性，需要将它添加到一个标签上。如果要一次性判断多个组件标签， 可以使用一个 ``<block/>`` 标签将多个组件包装起来，并在上边使用 wx:if 控制属性。 因为 wx:if 之中的模板也可能包含数据绑定，所以当 wx:if 的条件值切换时，框架有一个局部渲染的过程，因为它会确保条件块在切换时销毁或重新渲染。 在框架中，使用 ``wx:if="{{condition}}"`` 来判断是否需要渲染该代码块： 相比之下， ``hidden`` 就简单的多，组件始终会被渲染，只是简单的控制显示与隐藏。 