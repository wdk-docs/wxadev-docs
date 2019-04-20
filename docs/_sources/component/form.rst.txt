form
===========================

.. versionadded:: 1.0.0 开始支持，低版本需做兼容处理。

表单。将组件内的用户输入的<switch> <input> <checkbox> <slider> <radio> <picker> 提交。

当点击 <form> 表单中 form-type 为 submit 的 <button> 组件时，会将表单组件中的 value 值进行提交，需要在表单组件中加上 name 来作为 key。

属性	类型	默认值	必填	说明	最低版本
report-submit	boolean	false	否	是否返回 formId 用于发送模板消息	1.0.0
report-submit-timeout	number	0	否	等待一段时间（毫秒数）以确认 formId 是否生效。如果未指定这个参数，formId 有很小的概率是无效的（如遇到网络失败的情况）。指定这个参数将可以检测 formId 是否有效，以这个参数的时间作为这项检测的超时时间。如果失败，将返回 requestFormId:fail 开头的 formId	2.6.2
bindsubmit	eventhandle		否	携带 form 中的数据触发 submit 事件，event.detail = {value : {'name': 'value'} , formId: ''}	1.0.0
bindreset	eventhandle		否	表单重置时会触发 reset 事件	1.0.0
示例代码
在开发者工具中预览效果

.. code:: html


  <form bindsubmit="formSubmit" bindreset="formReset">
    <view class="section section_gap">
      <view class="section__title">switch</view>
      <switch name="switch" />
    </view>
    <view class="section section_gap">
      <view class="section__title">slider</view>
      <slider name="slider" show-value></slider>
    </view>

    <view class="section">
      <view class="section__title">input</view>
      <input name="input" placeholder="please input here" />
    </view>
    <view class="section section_gap">
      <view class="section__title">radio</view>
      <radio-group name="radio-group">
        <label>
          <radio value="radio1" />
          radio1
        </label>
        <label>
          <radio value="radio2" />
          radio2
        </label>
      </radio-group>
    </view>
    <view class="section section_gap">
      <view class="section__title">checkbox</view>
      <checkbox-group name="checkbox">
        <label>
          <checkbox value="checkbox1" />
          checkbox1
        </label>
        <label>
          <checkbox value="checkbox2" />
          checkbox2
        </label>
      </checkbox-group>
    </view>
    <view class="btn-area">
      <button form-type="submit">Submit</button>
      <button form-type="reset">Reset</button>
    </view>
  </form>
  Page({
    formSubmit(e) {
      console.log('form发生了submit事件，携带数据为：', e.detail.value)
    },
    formReset() {
      console.log('form发生了reset事件')
    }
  })
