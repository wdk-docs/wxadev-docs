:wxfrwk:`插件功能页 <plugin/functional-pages>`
==================================================

.. vresionadded:: 2.1.0 支持插件功能页

某些接口不能在插件中直接调用（如 wx.login），但插件开发者可以使用插件功能页的方式来实现功能。目前，插件功能页包括：

获取用户信息，包括 openid 和昵称等（相当于 wx.login 和 wx.getUserInfo 的功能），详见用户信息功能页；
支付（相当于 wx.requestPayment），详见支付功能页；
获取收货地址（相当于 wx.chooseAddress），详见收货地址功能页。
要使用插件功能页，需要先激活功能页特性，配置对应的功能页函数，再使用 <functional-page-navigator> 组件跳转到插件功能页，
从而实现对应的功能。详情请参考下文。

插件所有者小程序
开始开发之前，我们需要知道，插件功能页是指 插件所有者小程序 中的一个特殊页面。

插件所有者小程序，指的是与插件 AppID 相同的小程序。例如，“小程序示例”小程序开发了一个“小程序示例插件”，
那么无论这个插件被哪个小程序使用，这个插件的 插件所有者小程序 都是“小程序示例”。下文中会继续使用 插件所有者小程序 这个说法。

激活功能页特性
-----------------------

要在插件中调用插件功能页，需要先激活插件所有者小程序的功能页特性。
具体来说，在插件所有者小程序的 app.json 文件中添加 functionalPages 定义段，并令其值为 true ，例如：

代码示例：

.. code:: json

  {
    "functionalPages": {
      "independent": true
    }
  }

目前，兼容旧式写法：

.. code:: json

  {
    "functionalPages": true
  }

旧式写法将在未来将被移除支持，未来将不能编译上传。

这两种写法的区别在于，新式的写法 "independent": true 会使得插件功能页的代码独立于其他代码，
这意味着插件功能页可以被独立下载、加载，具有更好的性能表现。
但也同时使得插件功能页目录 functional-pages/ （支付功能页会使用其中的文件）
不能 require 这个目录以外的文件（反之亦然：这个目录以外的文件也不能调用这个目录内的）。

注意，新增或改变这个字段时，需要这个小程序发布新版本，才能在正式环境中使用插件功能页。

跳转到功能页
-----------------------

功能页不能使用 wx.navigateTo 来进行跳转，而是需要一个名为 <functional-page-navigator> 的组件。
以获取用户信息为例，可以在插件中放置如下的 <functional-page-navigator>：

代码示例：

.. code:: xml

  <functional-page-navigator
    name="loginAndGetUserInfo"
    args=""
    version="develop"
    bind:success="loginSuccess"
  >
    <button>登录到插件</button>
  </functional-page-navigator>

用户在点击这个 navigator 时，会自动跳转到插件所有者小程序的对应功能页。功能页会提示用户进行登录或其他相应的操作。操作结果会以组件事件的方式返回。

<functional-page-navigator> 的参数和详细使用方法可以参考组件说明 。

.. versionadded:: 2.4.0 支持插件所有者小程序跳转到自己的功能页。在基础库版本低于 2.4.0 时，点击跳转到自己的功能页的 <functional-page-navigator> 将没有任何反应。

真机开发测试的常规步骤
-----------------------

目前，功能页的跳转目前不支持在开发者工具中调试，请在真机上测试。初次进行真机开发测试时，通常步骤如下：

在开发者工具上打开插件所有者小程序项目，并点击“预览”；
用测试用的真机扫一下预览二维码，此时会进入插件所有者小程序，进入后就可以直接退出这个小程序；
在开发者工具上打开插件项目，将插件中 <functional-page-navigator> 中的 version 属性设置为 develop；
点击预览可以生成插件预览二维码，用测试用的真机扫码即可预览功能页；如果更改了插件代码，重新生成并扫描插件的预览二维码即可；
如果过了一段时间之后，跳转功能页时出现“开发版已过期”这样的提示，从第1步开始重试一次。

.. attention:: functional-page-navigator 的 version=develop 仅用于调试，因此在插件提审前，需要：

   - 确保已发布设置了 "functionalPages": true 的插件所有者小程序；
   - 确保所有的 functional-page-navigator 组件属性设置为 version="release" 。

功能页常见问题 FAQ
-----------------------

... 如何正确编辑插件所有者小程序？
   应该在开发者工具的“小程序”类型项目中编辑，而不是在“插件”类型的项目中编辑。
   比如，“小程序示例插件”的所有者小程序是“小程序示例”，它们的 AppID 都是 wxidxxxxxxxxxxxxxx ，
   如果是初次开发“小程序示例”小程序，可以在开发者工具中创建一个小程序项目，其 AppID 为 wxidxxxxxxxxxxxxxx ；
   如果之前开发过“小程序示例”小程序，直接打开之前的小程序项目即可。

... 点击 <functional-page-navigator> 之后没有任何反应。
   请检查引用插件的小程序和插件本身是不是同一个 AppID ，如果是，跳转到自己的功能页需要基础库 2.4.0 支持，
   否则使用 <functional-page-navigator> 不会有任何反应。

... 点击 <functional-page-navigator> 之后，展示了一个页面提示“页面不存在”。
   这种情况是因为插件所有者小程序没有正确设置 "functionalPages": true 。
   如果 functional-page-navigator 的 version="develop" ，这部手机需要扫码并进入插件所有者小程序一次；
   如果 version="release" ，请确保包含 "functionalPages": true 的插件所有者小程序已被发布。

... 点击 <functional-page-navigator version="develop"> 之后，弹窗提示“小程序开发版已过期”。
   遇到这种情况，重新扫码并进入插件所有者小程序一次即可。

... 点击 <functional-page-navigator name="requestPayment"> 之后，展示了一个页面提示“该功能无法使用”。
   在使用插件功能页时，小程序不能是个人小程序，同时，
   插件也需要额外的步骤申请开通插件支付权限（位于 管理后台 -> 小程序插件 -> 基本设置 -> 支付能力 ）。

... 点击 <functional-page-navigator name="requestPayment"> 之后，点击页面中的“支付”按钮，立刻退出了支付功能页。
   这通常是因为没有找到功能页函数 beforeRequestPayment ，
   请检查插件所有者小程序的 functional-pages/request-payment.js 文件和其中的 beforeRequestPayment 函数是否存在。

... 点击 <functional-page-navigator> 之后，展示了一个仅有返回按钮的页面。
   请检查 <functional-page-navigator> 的 name 属性是否被正确设置。

... 开发版可以正常跳转，但审核反馈不能跳转。
   请发布设置了 "functionalPages": true 的插件所有者小程序，
   且所有的 functional-page-navigator 组件属性设置为 version="release" 。

.. tip::

  - 功能页是插件所有者小程序中的一个特殊页面，开发者不能自定义这个页面的外观。
  - 在功能页展示时，一些与界面展示相关的接口将被禁用（接口调用返回 fail ）。
  - <functional-page-navigator> 可以在开发者工具中使用，但功能页的跳转目前不支持在开发者工具中调试，请在真机上测试。

.. error::

  - 在微信版本 6.6.7 中，功能页被拉起时会触发 App 的部分生命周期并使得功能页启动时间变得比较长。在后续的微信版本中这一行为会发生变更，使 App 生命周期不再被触发。
