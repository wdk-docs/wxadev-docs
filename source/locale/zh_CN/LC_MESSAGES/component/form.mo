��                        �     �     �     �     �  	     
              (     4     :     A     O  (   e     �  !   �     �  �   �     x  f     ,   �             [  -     �  �   �  %   "     H  	   O  w  Y     �     �     �     �  	   �  
   �                         %     3  (   I     r  !   v     �  �   �     \	  f   c	  ,   �	     �	     
  [  
     m  �   t  %        ,  	   3   0 1.0.0 2.6.2 :wx_comp:`form` bindreset bindsubmit boolean eventhandle false number report-submit report-submit-timeout 低版本需做 :ref:`compatibility` 。 否 在开发者工具中预览效果 属性 当点击 <:doc:`form`> 表单中 form-type 为 submit 的 <:doc:`button`> 组件时，会将表单组件中的 value 值进行提交，需要在表单组件中加上 name 来作为 key。 必填 携带 form 中的数据触发 submit 事件，event.detail = {value : {'name': 'value'} , formId: ''} 是否返回 formId 用于发送模板消息 最低版本 示例代码 等待一段时间（毫秒数）以确认 formId 是否生效。如果未指定这个参数，formId 有很小的概率是无效的（如遇到网络失败的情况）。指定这个参数将可以检测 formId 是否有效，以这个参数的时间作为这项检测的超时时间。如果失败，将返回 requestFormId:fail 开头的 formId 类型 表单。将组件内的用户输入的 <:doc:`switch`> <:doc:`input`> <:doc:`checkbox`> <:doc:`slider`> <:doc:`radio`> <:doc:`picker`> 提交。 表单重置时会触发 reset 事件 说明 默认值 Project-Id-Version: wxadev 
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
 0 1.0.0 2.6.2 :wx_comp:`form` bindreset bindsubmit boolean eventhandle false number report-submit report-submit-timeout 低版本需做 :ref:`compatibility` 。 否 在开发者工具中预览效果 属性 当点击 <:doc:`form`> 表单中 form-type 为 submit 的 <:doc:`button`> 组件时，会将表单组件中的 value 值进行提交，需要在表单组件中加上 name 来作为 key。 必填 携带 form 中的数据触发 submit 事件，event.detail = {value : {'name': 'value'} , formId: ''} 是否返回 formId 用于发送模板消息 最低版本 示例代码 等待一段时间（毫秒数）以确认 formId 是否生效。如果未指定这个参数，formId 有很小的概率是无效的（如遇到网络失败的情况）。指定这个参数将可以检测 formId 是否有效，以这个参数的时间作为这项检测的超时时间。如果失败，将返回 requestFormId:fail 开头的 formId 类型 表单。将组件内的用户输入的 <:doc:`switch`> <:doc:`input`> <:doc:`checkbox`> <:doc:`slider`> <:doc:`radio`> <:doc:`picker`> 提交。 表单重置时会触发 reset 事件 说明 默认值 