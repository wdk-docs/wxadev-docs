��          �               �   (   �        &   *  �   Q  �   �  H   �  �   �  �   �  -   b     �  �   �  �   h  w    (   �     �  &   �  �   �  �   �  H   F	  �   �	  �   I
  -        5  �   Q  �      **基础库与客户端之间的关系** **基础库更新** :wxfrwk:`基础库 <client-lib/index>` 为了避免新版本的基础库给线上小程序带来未知的影响，微信客户端都是携带 上一个稳定版 的基础库发布的。 以微信 6.5.8 为例，客户端在发布时携带的是 1.1.1 基础库（6.5.7 上已全量的稳定版）发布，在 6.5.8 发布后， 我们再通过后台灰度 1.2.0 基础库。 关于基础库的兼容方法，可以查看「兼容处理」章节。 在新版本客户端发布后，再通过后台灰度新版本基础库，灰度时长一般为 12 ～ 24 小时，在灰度结束后，用户设备上才会有新版本的基础库。 小程序的能力需要微信客户端来支撑，每一个基础库都只能在对应的客户端版本上运行，高版本的基础库无法兼容低版本的微信客户端。通常： 查看基础库与客户端版本对应关系 查看基础库版本分布 第 1（major）、2（minor）位版本号更新通常需要依赖新版本的客户端， 如：基础库 v2.1.3 运行在 v6.6.7 客户端，基础库 v2.2.0 需要 v6.7.0 客户端。 第 3（patch） 位版本号的更新一般不需要依赖客户端更新， 如：基础库v2.1.0 ~ v2.1.3 都运行在 v6.6.7 客户端，新版本发布会覆盖旧版本。 Project-Id-Version: wxadev 
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
 **基础库与客户端之间的关系** **基础库更新** :wxfrwk:`基础库 <client-lib/index>` 为了避免新版本的基础库给线上小程序带来未知的影响，微信客户端都是携带 上一个稳定版 的基础库发布的。 以微信 6.5.8 为例，客户端在发布时携带的是 1.1.1 基础库（6.5.7 上已全量的稳定版）发布，在 6.5.8 发布后， 我们再通过后台灰度 1.2.0 基础库。 关于基础库的兼容方法，可以查看「兼容处理」章节。 在新版本客户端发布后，再通过后台灰度新版本基础库，灰度时长一般为 12 ～ 24 小时，在灰度结束后，用户设备上才会有新版本的基础库。 小程序的能力需要微信客户端来支撑，每一个基础库都只能在对应的客户端版本上运行，高版本的基础库无法兼容低版本的微信客户端。通常： 查看基础库与客户端版本对应关系 查看基础库版本分布 第 1（major）、2（minor）位版本号更新通常需要依赖新版本的客户端， 如：基础库 v2.1.3 运行在 v6.6.7 客户端，基础库 v2.2.0 需要 v6.7.0 客户端。 第 3（patch） 位版本号的更新一般不需要依赖客户端更新， 如：基础库v2.1.0 ~ v2.1.3 都运行在 v6.6.7 客户端，新版本发布会覆盖旧版本。 