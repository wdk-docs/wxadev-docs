��          �               |     }     �     �  9   �    �     �     
          ,  	   :  f  D     �  �   �  Y   7     �  E   �  `   �  !   ?     a  f   }     �  w  �     r     �     �  9   �    �     �	     �	     
     !
  	   /
  f  9
     �  �   �  Y   ,     �  E   �  `   �  !   4     V  f   r     �   CSS 动画开始 CSS 动画结束 CSS 动画结束一个阶段 CSS 渐变结束或 wx.createAnimation 结束一个阶段 WXS 响应事件 的方式可以通过使用 WXS 来响应事件的方法来动态调整节点的 style 属性。 通过不断改变 style 属性的值可以做到动画效果。同时，这种方式也可以根据用户的触摸事件来动态地生成动画。 animationend animationiteration animationstart transitionend 事件名 使用连续使用 setData 来改变界面的方法也可以达到动画的效果。这样可以任意地改变界面， 但通常会产生较大的延迟或卡顿，甚至导致小程序僵死。此时可以通过将页面的 setData 改为 自定义组件 中的 setData 来提升性能。 下面的例子是使用 setData 来实现秒表动画的示例。 动画 动画过程中，可以使用 bindtransitionend bindanimationstart bindanimationiteration bindanimationend 来监听动画事件。 同时，还可以使用 wx.createAnimation 接口来动态创建简易的动画效果。 含义 在一些复杂场景下，上述的动画方法可能并不适用。 在小程序中，通常可以使用 CSS 渐变 和 CSS 动画 来创建简易的界面动画。 在开发者工具中预览效果 界面动画的常见方式 这几个事件都不是冒泡事件，需要绑定在真正发生了动画的节点上才会生效。 高级的动画方式 Project-Id-Version: wxadev 
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
 CSS 动画开始 CSS 动画结束 CSS 动画结束一个阶段 CSS 渐变结束或 wx.createAnimation 结束一个阶段 WXS 响应事件 的方式可以通过使用 WXS 来响应事件的方法来动态调整节点的 style 属性。 通过不断改变 style 属性的值可以做到动画效果。同时，这种方式也可以根据用户的触摸事件来动态地生成动画。 animationend animationiteration animationstart transitionend 事件名 使用连续使用 setData 来改变界面的方法也可以达到动画的效果。这样可以任意地改变界面， 但通常会产生较大的延迟或卡顿，甚至导致小程序僵死。此时可以通过将页面的 setData 改为 自定义组件 中的 setData 来提升性能。 下面的例子是使用 setData 来实现秒表动画的示例。 动画 动画过程中，可以使用 bindtransitionend bindanimationstart bindanimationiteration bindanimationend 来监听动画事件。 同时，还可以使用 wx.createAnimation 接口来动态创建简易的动画效果。 含义 在一些复杂场景下，上述的动画方法可能并不适用。 在小程序中，通常可以使用 CSS 渐变 和 CSS 动画 来创建简易的界面动画。 在开发者工具中预览效果 界面动画的常见方式 这几个事件都不是冒泡事件，需要绑定在真正发生了动画的节点上才会生效。 高级的动画方式 