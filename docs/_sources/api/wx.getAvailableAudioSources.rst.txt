:wxapi:`wx.getAvailableAudioSources`
============================================

.. function:: wx.getAvailableAudioSources({[success][,fail][,complete  ]})

   .. versionadded: 2.1.0 低版本需做 :ref:`compatibility` 。

   :label: 获取当前支持的音频输入源
   :param function success(res): 接口调用成功的回调函数

     - **audioSources** (*Array.<string>*) - 支持的音频输入源列表，可在 RecorderManager.start() 接口中使用。返回值定义参考 [#l1]_

       - **auto** -	自动设置，默认使用手机麦克风，插上耳麦后自动切换使用耳机麦克风，所有平台适用
       - **buildInMic** -	手机麦克风，仅限 iOS
       - **headsetMic** -	耳机麦克风，仅限 iOS
       - **mic** -	麦克风（没插耳麦时是手机麦克风，插耳麦时是耳机麦克风），仅限 Android
       - **camcorder** -	同 **mic**，适用于录制音视频内容，仅限 Android
       - **voice_communication** -	同 **mic**，适用于实时沟通，仅限 Android
       - **voice_recognition** -	同 **mic**，适用于语音识别，仅限 Android

   :param function fail: 接口调用失败的回调函数
   :param function complete: 接口调用结束的回调函数（调用成功、失败都会执行）


.. [#l1] https://developer.android.com/reference/kotlin/android/media/MediaRecorder.AudioSource