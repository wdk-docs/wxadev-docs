��          �               l  U   m  \   �  �         �  G   �  �        �  $   �  �     [   �  $     �   3  �     *   �     �     �  �   �  q   �  X   E  �   �  w  i	  U   �
  \   7  �   �     (  G   8  �   �     J  $   c  �   �  [   &  $   �  �   �  �   �  *        B     U  �   h  q   G  X   �  �      *pageOrientation* 还可以被设置为 `landscape` ，表示固定为横屏显示。 Bug： Android 微信版本 6.7.3 中， live-pusher 组件在屏幕旋转时方向异常。 Media Query有时，对于不同尺寸的显示区域，页面的布局会有所差异。此时可以使用 media query 来解决大多数问题。 代码示例： 以下是在单个页面 `json` 文件中启用屏幕旋转的示例。 使小程序中的页面支持屏幕旋转的方法是：在 `app.json` 的 `window` 段中设置 ``"pageOrientation": "auto"`` ， 或在页面 `json` 文件中配置 ``"pageOrientation": "auto"`` 。 响应显示区域变化 在 iPad 上启用屏幕旋转支持 在 iPad 上运行的小程序可以支持屏幕旋转。使小程序支持 iPad 屏幕旋转的方法是：在 `app.json` 中添加 ``"resizable": true``。 在 js 中读取页面的显示区域尺寸，可以使用 selectorQuery.selectViewport 。 在手机上启用屏幕旋转支持 如果小程序添加了上述声明，则在屏幕旋转时，小程序将随之旋转，显示区域尺寸也会随着屏幕旋转而变化。注意：在 iPad 上不能单独配置某个页面是否支持屏幕旋转。 如果页面添加了上述声明，则在屏幕旋转时，这个页面将随之旋转，显示区域尺寸也会随着屏幕旋转而变化。 小程序在手机上支持屏幕旋转。 屏幕旋转事件 显示区域尺寸 显示区域指小程序界面中可以自由布局展示的区域。在默认情况下，小程序显示区域的尺寸自页面初始化起就不会发生变化。但以下两种方式都可以改变这一默认行为。 有时，仅仅使用 media query 无法控制一些精细的布局变化。此时可以使用 js 作为辅助。 此外，还可以使用 wx.onWindowResize 来监听（但这不是推荐的方式）。 页面尺寸发生改变的事件，可以使用页面的 onResize 来监听。对于自定义组件，可以使用 resize 生命周期来监听。 回调函数中将返回显示区域的尺寸信息。 Project-Id-Version: wxadev 
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
 *pageOrientation* 还可以被设置为 `landscape` ，表示固定为横屏显示。 Bug： Android 微信版本 6.7.3 中， live-pusher 组件在屏幕旋转时方向异常。 Media Query有时，对于不同尺寸的显示区域，页面的布局会有所差异。此时可以使用 media query 来解决大多数问题。 代码示例： 以下是在单个页面 `json` 文件中启用屏幕旋转的示例。 使小程序中的页面支持屏幕旋转的方法是：在 `app.json` 的 `window` 段中设置 ``"pageOrientation": "auto"`` ， 或在页面 `json` 文件中配置 ``"pageOrientation": "auto"`` 。 响应显示区域变化 在 iPad 上启用屏幕旋转支持 在 iPad 上运行的小程序可以支持屏幕旋转。使小程序支持 iPad 屏幕旋转的方法是：在 `app.json` 中添加 ``"resizable": true``。 在 js 中读取页面的显示区域尺寸，可以使用 selectorQuery.selectViewport 。 在手机上启用屏幕旋转支持 如果小程序添加了上述声明，则在屏幕旋转时，小程序将随之旋转，显示区域尺寸也会随着屏幕旋转而变化。注意：在 iPad 上不能单独配置某个页面是否支持屏幕旋转。 如果页面添加了上述声明，则在屏幕旋转时，这个页面将随之旋转，显示区域尺寸也会随着屏幕旋转而变化。 小程序在手机上支持屏幕旋转。 屏幕旋转事件 显示区域尺寸 显示区域指小程序界面中可以自由布局展示的区域。在默认情况下，小程序显示区域的尺寸自页面初始化起就不会发生变化。但以下两种方式都可以改变这一默认行为。 有时，仅仅使用 media query 无法控制一些精细的布局变化。此时可以使用 js 作为辅助。 此外，还可以使用 wx.onWindowResize 来监听（但这不是推荐的方式）。 页面尺寸发生改变的事件，可以使用页面的 onResize 来监听。对于自定义组件，可以使用 resize 生命周期来监听。 回调函数中将返回显示区域的尺寸信息。 