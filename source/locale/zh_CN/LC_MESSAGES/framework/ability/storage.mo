��          D               l   "   m   �   �   �   6  K    w  R  "   �  �   �  �   �  K  c   :wxfrwk:`存储 <ability/storage>` 同一个微信用户，同一个小程序 storage 上限为 10MB。storage 以用户维度隔离，同一台设备上，A 用户无法读取到 B 用户的数据。 如果用户储存空间不足，我们会清空最近最久未使用的小程序的本地缓存。 我们不建议将关键信息全部存在 storage，以防储存空间不足或用户换设备的情况。 每个微信小程序都可以有自己的本地缓存， 可以通过 :func:`wx.setStorage` / :func:`wx.setStorageSync` 、 :func:`wx.getStorage` / :func:`wx.getStorageSync` 、 :func:`wx.clearStorage` / :func:`wx.clearStorageSync` ， :func:`wx.removeStorage`/ :func:`wx.removeStorageSync` 对本地缓存进行读写和清理。 Project-Id-Version: wxadev 
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
 :wxfrwk:`存储 <ability/storage>` 同一个微信用户，同一个小程序 storage 上限为 10MB。storage 以用户维度隔离，同一台设备上，A 用户无法读取到 B 用户的数据。 如果用户储存空间不足，我们会清空最近最久未使用的小程序的本地缓存。 我们不建议将关键信息全部存在 storage，以防储存空间不足或用户换设备的情况。 每个微信小程序都可以有自己的本地缓存， 可以通过 :func:`wx.setStorage` / :func:`wx.setStorageSync` 、 :func:`wx.getStorage` / :func:`wx.getStorageSync` 、 :func:`wx.clearStorage` / :func:`wx.clearStorageSync` ， :func:`wx.removeStorage`/ :func:`wx.removeStorageSync` 对本地缓存进行读写和清理。 