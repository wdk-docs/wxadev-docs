��          �               |     }     �  �   �  G   (  "   p     �  5   �  �   �     [     h  �   �       ,   "     O  G   V     �     �  I   �  q   �     n  ^   u  w  �     L     c  �   s  G   �  "   ?     b  5   s  �   �     *	     7	  �   V	     �	  ,   �	     
  G   %
     m
     t
  I   �
  q   �
     =  ^   D   :class:`Worker` 对象 :wxapi:`Worker` Worker 实例，主线程中可通过 :func:`wx.createWorker` 接口获取，worker 线程中可通过全局变量 worker 获取。 message   Object  主线程/Worker 线程向当前线程发送的消息 worker 入口文件的绝对路径 worker 线程中 主线程/Worker 线程向当前线程发送的消息 主线程/Worker 线程向当前线程发送的消息  - message   Object  主线程/Worker 线程向当前线程发送的消息 主线程中 低版本需做兼容处理。 创建一个 Worker 线程。目前限制最多只能创建一个 Worker，创建下一个 :class:`Worker` 前请先调用 :func:`Worker.terminate` 参数 向主线程/Worker 线程发送的消息。 方法 监听主线程/Worker 线程向当前线程发送的消息的事件。 示例 示例代码 结束当前 Worker 线程。仅限在主线程 worker 对象上调用。 运行以下代码需先进行基础配置，详细请查阅 多线程 文档了解基础知识和配置方法。 返回 需要发送的消息，必须是一个可序列化的 JavaScript key-value 形式的对象。 Project-Id-Version: wxadev 
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
 :class:`Worker` 对象 :wxapi:`Worker` Worker 实例，主线程中可通过 :func:`wx.createWorker` 接口获取，worker 线程中可通过全局变量 worker 获取。 message   Object  主线程/Worker 线程向当前线程发送的消息 worker 入口文件的绝对路径 worker 线程中 主线程/Worker 线程向当前线程发送的消息 主线程/Worker 线程向当前线程发送的消息  - message   Object  主线程/Worker 线程向当前线程发送的消息 主线程中 低版本需做兼容处理。 创建一个 Worker 线程。目前限制最多只能创建一个 Worker，创建下一个 :class:`Worker` 前请先调用 :func:`Worker.terminate` 参数 向主线程/Worker 线程发送的消息。 方法 监听主线程/Worker 线程向当前线程发送的消息的事件。 示例 示例代码 结束当前 Worker 线程。仅限在主线程 worker 对象上调用。 运行以下代码需先进行基础配置，详细请查阅 多线程 文档了解基础知识和配置方法。 返回 需要发送的消息，必须是一个可序列化的 JavaScript key-value 形式的对象。 