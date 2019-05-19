:wxref:`页面(page) <api/Page>`
===================================

.. class:: Page({data,onLoad,onShow,onReady,onHide,onUnload,onPullDownRefresh,onReachBottom,onShareAppMessage,onPageScroll,onResize,onTabItemTap})

  注册小程序中的一个页面。接受一个 Object 类型参数，其指定页面的初始数据、生命周期回调、事件处理函数等。

  :param Object data:

    页面第一次渲染使用的初始数据。
    页面加载时，data 将会以JSON字符串的形式由逻辑层传至渲染层，
    因此data中的数据必须是可以转成JSON的类型：字符串，数字，布尔值，对象，数组。
    渲染层可以通过 WXML 对数据进行绑定。

    示例代码： ::download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/2PeBsKmn6EZ9>`

    .. code:: html

      <view>{{text}}</view>
      <view>{{array[0].msg}}</view>

    .. code::

      Page({
        data: {
          text: 'init data',
          array: [{msg: '1'}, {msg: '2'}]
        }
      })

  :param function onLoad(query): **生命周期回调函数** — 监听页面加载, 页面加载时触发。
    一个页面只会调用一次，可以在 onLoad 的参数中获取打开当前页面路径中的参数。

    - **query**	(*Object*) -	打开当前页面路径中的参数

  :param function onShow:  **生命周期回调函数** — 监听页面显示,页面显示/切入前台时触发。
  :param function onReady:  **生命周期回调函数** — 监听页面初次渲染完成, 页面初次渲染完成时触发。一个页面只会调用一次，代表页面已经准备妥当，可以和视图层进行交互。

    .. attention:: 对界面内容进行设置的 API 如 :func:`wx.setNavigationBarTitle` ，请在onReady之后进行。详见生命周期

  :param function onHide:  **生命周期回调函数** — 监听页面隐藏, 页面隐藏/切入后台时触发。 如 :func:`wx.navigateTo` 或底部 tab 切换到其他页面，小程序切入后台等。
  :param function onUnload:  **生命周期回调函数** — 监听页面卸载, 页面卸载时触发。如 :func:`wx.redirectTo` 或 :func:`wx.navigateBack` 到其他页面时。
  :param function onPullDownRefresh:  **页面事件处理函数** - 监听用户下拉动作刷新事件。

    - 需要在 ``app.json`` 的 window 选项中或页面配置中开启 :data:`enablePullDownRefresh` 。
    - 可以通过 :func:`wx.startPullDownRefresh` 触发下拉刷新，调用后触发下拉刷新动画，效果与用户手动下拉刷新一致。
    - 当处理完数据刷新后，:func:`wx.stopPullDownRefresh` 可以停止当前页面的下拉刷新。

  :param function onReachBottom:  **页面事件处理函数** - 监听用户上拉触底事件。

    - 可以在 ``app.json`` 的 window 选项中或页面配置中设置触发距离 :data:`onReachBottomDistance` 。
    - 在触发距离内滑动期间，本事件只会被触发一次。

  :param function onShareAppMessage({from,target,webViewUrl}):  **页面事件处理函数** - 用户点击右上角转发,监听用户点击页面内转发按钮（:ref:`<button> <button>` 组件 ``open-type="share"``）或右上角菜单“转发”按钮的行为，并自定义转发内容。

    .. attention:: 只有定义了此事件处理函数，右上角菜单才会显示“转发”按钮

    - **from**	(*String*) -	转发事件来源。button：页面内转发按钮；menu：右上角转发菜单	1.2.4
    - **target**	(*Object*) -	如果 from 值是 button，则 target 是触发这次转发事件的 button，否则为 undefined	1.2.4
    - **webViewUrl**	(*String*) -	页面中包含<web-view>组件时，返回当前<web-view>的url	1.6.4

    此事件处理函数需要 return 一个 Object，用于自定义转发内容，返回内容如下:

    - **title**	转发标题	当前小程序名称
    - **path**	转发路径	当前页面 path ，必须是以 / 开头的完整路径
    - **imageUrl**	自定义图片路径，可以是本地文件路径、代码包文件路径或者网络图片路径。支持PNG及JPG。显示图片长宽比是 5:4。	使用默认截图	1.5.0

    :示例: :download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/mffqUKmr6fZU>`

      .. code::

        Page({
          onShareAppMessage(res) {
            if (res.from === 'button') {
              // 来自页面内转发按钮
              console.log(res.target)
            }
            return {
              title: '自定义转发标题',
              path: '/page/user?id=123'
            }
          }
        })

  :param function onPageScroll({scrollTop}):  **页面事件处理函数** - 监听用户滑动页面事件。

    - **scrollTop**	(*Number*) -	页面在垂直方向已滚动的距离（单位px）

    .. attention:: 请只在需要的时候才在 page 中定义此方法，不要定义空方法。
      以减少不必要的事件派发对渲染层-逻辑层通信的影响。

    .. attention:: 请避免在 onPageScroll 中过于频繁的执行 setData 等引起逻辑层-渲染层通信的操作。
      尤其是每次传输大量数据，会影响通信耗时。

  :param function onResize:  **页面事件处理函数** - 页面尺寸改变时触发，详见 响应显示区域变化

    .. versionadded:: 2.4.0 低版本需做 :ref:`compatibility` 。

    小程序屏幕旋转时触发。详见 响应显示区域变化

  :param function onTabItemTap({index, pagePath, text}):  **页面事件处理函数** - 点击 tab 时触发

    .. versionadded:: 1.9.0 低版本需做 :ref:`compatibility` 。

    - **index**	(*String*) -	被点击tabItem的序号，从0开始
    - **pagePath**	(*String*) -	被点击tabItem的页面路径
    - **text**	(*String*) -	被点击tabItem的按钮文字

    :示例:

      .. code::

        Page({
          onTabItemTap(item) {
            console.log(item.index)
            console.log(item.pagePath)
            console.log(item.text)
          }
        })
  :param function tapFunc: **组件事件处理函数** - Page 中还可以定义组件事件处理函数。在渲染层的组件中加入事件绑定，当事件被触发时，就会执行 Page 中定义的事件处理函数。

    :示例: :download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/vUf6fKmX64Zn>`

      .. code:: html

        <view bindtap="viewTap">click me</view>

      .. code::

        Page({
          viewTap() {
            console.log('view tap')
          }
        })

  :param any 其他: 开发者可以添加任意的函数或数据到 Object 参数中，在页面的函数中用 this 可以访问

  :示例:

    .. code:: js

      // index.js
      Page({
        data: {
          text: 'This is page data.'
        },
        onLoad(options) {
          // Do some initialize when page load.
        },
        onReady() {
          // Do something when page ready.
        },
        onShow() {
          // Do something when page show.
        },
        onHide() {
          // Do something when page hide.
        },
        onUnload() {
          // Do something when page close.
        },
        onPullDownRefresh() {
          // Do something when pull down.
        },
        onReachBottom() {
          // Do something when page reach bottom.
        },
        onShareAppMessage() {
          // return custom share data when user share.
        },
        onPageScroll() {
          // Do something when page scroll
        },
        onResize() {
          // Do something when page resize
        },
        onTabItemTap(item) {
          console.log(item.index)
          console.log(item.pagePath)
          console.log(item.text)
        },
        // Event handler.
        viewTap() {
          this.setData({
            text: 'Set some data for updating view.'
          }, function () {
            // this is setData callback
          })
        },
        customData: {
          hi: 'MINA'
        }
      })

.. attribute:: Page.route

  .. versionadded:: 1.2.0 低版本需做 :ref:`compatibility` 。

  到当前页面的路径，类型为String。

  .. code::

    Page({
      onShow() {
        console.log(this.route)
      }
    })

.. function:: Page.prototype.setData(data[, callback])

  setData 函数用于将数据从逻辑层发送到视图层（异步），同时改变对应的 this.data 的值（同步）。

  :param object data: 要改变的数据,
    以 *key:value* 的形式表示，将 *this.data* 中的 *key* 对应的值改变成 *value。*

    其中 key 可以以数据路径的形式给出，支持改变数组中的某一项或对象的某个属性，如 *array[2].message*，*a.b.c.d*，并且不需要在 *this.data* 中预先定义。

  :param Function callback:	setData引起的界面更新渲染完毕后的回调函数

    .. versionadded:: 1.5.0

  .. attention::

    - 直接修改 this.data 而不调用 this.setData 是无法改变页面的状态的，还会造成数据不一致。
    - 仅支持设置可 JSON 化的数据。
    - 单次设置的数据不能超过1024kB，请尽量避免一次设置过多的数据。
    - 请不要把 data 中任何一项的 value 设为 undefined ，否则这一项将不被设置并可能遗留一些潜在问题。

  :示例:

    :download:`在开发者工具中预览效果 <https://developers.weixin.qq.com/s/HofnzKmb6fZe>`

    .. code:: html

      <!--index.wxml-->
      <view>{{text}}</view>
      <button bindtap="changeText">Change normal data</button>
      <view>{{num}}</view>
      <button bindtap="changeNum">Change normal num</button>
      <view>{{array[0].text}}</view>
      <button bindtap="changeItemInArray">Change Array data</button>
      <view>{{object.text}}</view>
      <button bindtap="changeItemInObject">Change Object data</button>
      <view>{{newField.text}}</view>
      <button bindtap="addNewField">Add new data</button>

    .. code::

      // index.js
      Page({
        data: {
          text: 'init data',
          num: 0,
          array: [{text: 'init data'}],
          object: {
            text: 'init data'
          }
        },
        changeText() {
          // this.data.text = 'changed data' // 不要直接修改 this.data
          // 应该使用 setData
          this.setData({
            text: 'changed data'
          })
        },
        changeNum() {
          // 或者，可以修改 this.data 之后马上用 setData 设置一下修改了的字段
          this.data.num = 1
          this.setData({
            num: this.data.num
          })
        },
        changeItemInArray() {
          // 对于对象或数组字段，可以直接修改一个其下的子字段，这样做通常比修改整个对象或数组更好
          this.setData({
            'array[0].text': 'changed data'
          })
        },
        changeItemInObject() {
          this.setData({
            'object.text': 'changed data'
          })
        },
        addNewField() {
          this.setData({
            'newField.text': 'new data'
          })
        }
      })
