��    U      �              l     m     q     s     y     �     �     �     �     �  	   �  
   �  7   �  	   �     �       	          >         _     k     q  
   z     �  F   �  ;   �          /     N     S     Z     h  	   n  	   x     �     �     �     �     �  
   �     �     �  @   �  @        E  0   I  &   z     �  6   �  �   �     �	     �	  =   �	  (   �	  (   %
     N
     k
     �
     �
  .   �
     �
  .   �
  7   %     ]  .   d     �     �  ?   �  3   �          (     D     Q  $   ^  $   �     �     �  !   �     �     �       =   "  ,   `  	   �  3   �  w  �     C     G     I     O     V     Y     [     a     d  	   |  
   �  7   �  	   �     �     �  	   �     �  >   �     5     A     G  
   P     [  F   c  ;   �     �          $     )     0     >  	   D  	   N     X     d     k     q     �  
   �     �     �  @   �  @   �       0     &   P     w  6   �  �   �     x     |  =   �  (   �  (   �     $     A     ^     z  .   �     �  .   �  7   �     3  .   :     i     p  ?   w  3   �     �     �          '  $   4  $   Y     ~     �  !   �     �     �     �  =   �  ,   6  	   c  3   m   0.5 1 1.2.0 1.9.90 10 2 2.1.0 20 :wx_comp:`movable-view` animation bindchange bindchange 返回的 source 表示产生移动的原因 bindscale boolean damping direction disabled event.detail = {x, y, scale}，x和y字段在2.1.0之后支持 eventhandle false friction htouchmove inertia movable-view 必须设置width和height属性，不设置默认为10px movable-view 默认为绝对定位，top和left属性为0px movable-view是否带有惯性 movable-view的移动方向， none number out-of-bounds scale scale-max scale-min scale-value string touch touch-out-of-bounds true vtouchmove x y 会自动移动到可移动范围；改变x的值会触发动画 会自动移动到可移动范围；改变y的值会触发动画 值 值越大摩擦力越大，滑动越快停止； 则意味着touchmove事件也被catch 初次手指触摸后 动画和过界回弹的动画，值越大移动越快 可移动的视图容器，在页面中可以拖拽滑动。<:doc:`movable-view`>必须在 <:doc:`movable-area`> 组件中，并且必须是直接子节点，否则不能移动。 否 如果catch此事件， 如果catch此事件，则意味着touchmove事件也被catch 如果x的值不在可移动范围内， 如果y的值不在可移动范围内， 定义x轴方向的偏移， 定义y轴方向的偏移， 定义缩放倍数最大值 定义缩放倍数最小值 定义缩放倍数， 取值范围为 0.5 - 10 属性 属性值有all、vertical、horizontal、none 开始支持，低版本需做 :ref:`compatibility` 。 必填 必须大于0，否则会被设置成默认值 惯性 拖动 拖动过程中触发的事件， event.detail = {x, y, source} 摩擦系数，用于控制惯性滑动的动画， 是否使用动画 是否支持双指缩放， 是否禁用 最低版本 移动为横向的移动时触发， 移动为纵向的移动时触发， 空字符串    setData 类型 缩放过程中触发的事件， 说明 超出移动范围 超出移动范围后的回弹 超过可移动区域后， movable-view是否还可以移动 阻尼系数，用于控制x或y改变时的 默认值 默认缩放手势生效区域是在movable-view内 Project-Id-Version: wxadev 
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
 0.5 1 1.2.0 1.9.90 10 2 2.1.0 20 :wx_comp:`movable-view` animation bindchange bindchange 返回的 source 表示产生移动的原因 bindscale boolean damping direction disabled event.detail = {x, y, scale}，x和y字段在2.1.0之后支持 eventhandle false friction htouchmove inertia movable-view 必须设置width和height属性，不设置默认为10px movable-view 默认为绝对定位，top和left属性为0px movable-view是否带有惯性 movable-view的移动方向， none number out-of-bounds scale scale-max scale-min scale-value string touch touch-out-of-bounds true vtouchmove x y 会自动移动到可移动范围；改变x的值会触发动画 会自动移动到可移动范围；改变y的值会触发动画 值 值越大摩擦力越大，滑动越快停止； 则意味着touchmove事件也被catch 初次手指触摸后 动画和过界回弹的动画，值越大移动越快 可移动的视图容器，在页面中可以拖拽滑动。<:doc:`movable-view`>必须在 <:doc:`movable-area`> 组件中，并且必须是直接子节点，否则不能移动。 否 如果catch此事件， 如果catch此事件，则意味着touchmove事件也被catch 如果x的值不在可移动范围内， 如果y的值不在可移动范围内， 定义x轴方向的偏移， 定义y轴方向的偏移， 定义缩放倍数最大值 定义缩放倍数最小值 定义缩放倍数， 取值范围为 0.5 - 10 属性 属性值有all、vertical、horizontal、none 开始支持，低版本需做 :ref:`compatibility` 。 必填 必须大于0，否则会被设置成默认值 惯性 拖动 拖动过程中触发的事件， event.detail = {x, y, source} 摩擦系数，用于控制惯性滑动的动画， 是否使用动画 是否支持双指缩放， 是否禁用 最低版本 移动为横向的移动时触发， 移动为纵向的移动时触发， 空字符串    setData 类型 缩放过程中触发的事件， 说明 超出移动范围 超出移动范围后的回弹 超过可移动区域后， movable-view是否还可以移动 阻尼系数，用于控制x或y改变时的 默认值 默认缩放手势生效区域是在movable-view内 