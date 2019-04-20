picker-view
===========================

.. versionadded:: 1.0.0 开始支持，低版本需做兼容处理。

嵌入页面的滚动选择器。其中只可放置 picker-view-column组件，其它节点不会显示。

属性	类型	默认值	必填	说明	最低版本
value	Array.<number>		否	数组中的数字依次表示 picker-view 内的 picker-view-column 选择的第几项（下标从 0 开始），数字大于 picker-view-column 可选项长度时，选择最后一项。	1.0.0
indicator-style	string		否	设置选择器中间选中框的样式	1.0.0
indicator-class	string		否	设置选择器中间选中框的类名	1.1.0
mask-style	string		否	设置蒙层的样式	1.5.0
mask-class	string		否	设置蒙层的类名	1.5.0
bindchange	eventhandle		否	滚动选择时触发change事件，event.detail = {value}；value为数组，表示 picker-view 内的 picker-view-column 当前选择的是第几项（下标从 0 开始）	1.0.0
bindpickstart	eventhandle		否	当滚动选择开始时候触发事件	2.3.1
bindpickend	eventhandle		否	当滚动选择结束时候触发事件	2.3.1
Bug & Tip
.. tip:: 滚动时在iOS自带振动反馈，可在系统设置 -> 声音与触感 -> 系统触感反馈中关闭
示例代码
在开发者工具中预览效果


.. code:: html


  <view>
    <view>{{year}}年{{month}}月{{day}}日</view>
    <picker-view
      indicator-style="height: 50px;"
      style="width: 100%; height: 300px;"
      value="{{value}}"
      bindchange="bindChange"
    >
      <picker-view-column>
        <view wx:for="{{years}}" style="line-height: 50px">{{item}}年</view>
      </picker-view-column>
      <picker-view-column>
        <view wx:for="{{months}}" style="line-height: 50px">{{item}}月</view>
      </picker-view-column>
      <picker-view-column>
        <view wx:for="{{days}}" style="line-height: 50px">{{item}}日</view>
      </picker-view-column>
    </picker-view>
  </view>
  const date = new Date()
  const years = []
  const months = []
  const days = []

  for (let i = 1990; i <= date.getFullYear(); i++) {
    years.push(i)
  }

  for (let i = 1; i <= 12; i++) {
    months.push(i)
  }

  for (let i = 1; i <= 31; i++) {
    days.push(i)
  }

  Page({
    data: {
      years,
      year: date.getFullYear(),
      months,
      month: 2,
      days,
      day: 2,
      value: [9999, 1, 1],
    },
    bindChange(e) {
      const val = e.detail.value
      this.setData({
        year: this.data.years[val[0]],
        month: this.data.months[val[1]],
        day: this.data.days[val[2]]
      })
    }
  })
