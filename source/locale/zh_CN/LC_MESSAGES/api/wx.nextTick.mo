��          \               �      �   `  �   (        <  �   C  P        o  w  |     �  `  	  (   j     �  �   �  P   u     �   :wxapi:`wx.nextTick` 一个极端的案例：当父组件的 setData 引发了子组件的 triggerEvent， 进而使得父组件又进行了一次 setData，期间有通过 wx:if 语句对子组件进行卸载， 就有可能引发奇怪的错误，所以对于不需要在一个同步流程内完成的逻辑， 可以使用此接口延迟到下一个时间片再执行。 低版本需做 :ref:`compatibility` 。 参数 因为自定义组件中的 setData 和 triggerEvent 等接口本身是同步的操作，当这几个接口被连续调用时，都是在一个同步流程中执行完的，因此若逻辑不当可能会导致出错。 延迟一部分操作到下一个时间片再执行。（类似于 setTimeout） 示例代码 Project-Id-Version: wxadev 
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
 :wxapi:`wx.nextTick` 一个极端的案例：当父组件的 setData 引发了子组件的 triggerEvent， 进而使得父组件又进行了一次 setData，期间有通过 wx:if 语句对子组件进行卸载， 就有可能引发奇怪的错误，所以对于不需要在一个同步流程内完成的逻辑， 可以使用此接口延迟到下一个时间片再执行。 低版本需做 :ref:`compatibility` 。 参数 因为自定义组件中的 setData 和 triggerEvent 等接口本身是同步的操作，当这几个接口被连续调用时，都是在一个同步流程中执行完的，因此若逻辑不当可能会导致出错。 延迟一部分操作到下一个时间片再执行。（类似于 setTimeout） 示例代码 