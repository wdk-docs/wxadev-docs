��          �               <  *   =     h     o     v  6   }     �     �     �  �   �     \  G   p     �     �  
   @  D   K  5   �  �   �  w  `  *   �          
       6        O     [     g  �   n     �  G        S     [  
   �  D   �  5   +  �   a   :wxfrwk:`import 引用 <view/wxml/import>` A.wxml B.wxml C.wxml WXML 提供两种文件引用方式import和include。 footer.wxml header.wxml import import 有作用域的概念，即只会 import 目标文件中定义的 template，而不会 import 目标文件 import 的 template。 import 的作用域 import可以在该文件中使用目标文件定义的template，如： include include 可以将目标文件除了 <template/> <wxs/> 外的整个代码引入，相当于是拷贝到 include 位置，如： index.wxml 在 index.wxml 中引用了 item.wxml，就可以使用item模板： 在 item.wxml 中定义了一个叫item的template： 如：C import B，B import A，在C中可以使用B定义的template， 在B中可以使用A定义的template，但是C不能使用A定义的template。 Project-Id-Version: wxadev 
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
 :wxfrwk:`import 引用 <view/wxml/import>` A.wxml B.wxml C.wxml WXML 提供两种文件引用方式import和include。 footer.wxml header.wxml import import 有作用域的概念，即只会 import 目标文件中定义的 template，而不会 import 目标文件 import 的 template。 import 的作用域 import可以在该文件中使用目标文件定义的template，如： include include 可以将目标文件除了 <template/> <wxs/> 外的整个代码引入，相当于是拷贝到 include 位置，如： index.wxml 在 index.wxml 中引用了 item.wxml，就可以使用item模板： 在 item.wxml 中定义了一个叫item的template： 如：C import B，B import A，在C中可以使用B定义的template， 在B中可以使用A定义的template，但是C不能使用A定义的template。 