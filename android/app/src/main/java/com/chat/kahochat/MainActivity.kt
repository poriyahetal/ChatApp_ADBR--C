package com.chat.kahochat

import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import cl.puntito.simple_pip_mode.PipCallbackHelper
import android.content.res.Configuration
import io.flutter.embedding.android.FlutterFragmentActivity
import androidx.core.view.WindowCompat



class MainActivity : FlutterFragmentActivity() {
     private val callbackHelper: PipCallbackHelper = PipCallbackHelper()

   
   override fun onPictureInPictureModeChanged(active: Boolean, newConfig: Configuration?) {
        callbackHelper.onPictureInPictureModeChanged(active)
    }

  
   override fun configureFlutterEngine( flutterEngine: FlutterEngine) {
        // try {
            
             super.configureFlutterEngine(flutterEngine);
            // callbackHelper.configureFlutterEngine(flutterEngine)
            GeneratedPluginRegistrant.registerWith(flutterEngine);
            // new
            // MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(),CHANNEL)
            // .setMethodCallHandler(((call, result) -> {
            // if ("openDeepAr".equals(call.method)) {
            // System.out.println("IN Platform channel");
            // startActivity(new Intent(this, CameraActivity.class));
            // }
            // }));
        // } catch (e: Exception) {
        //     System.out.println(e)
        // }
    }
    override fun onPostResume() {
        super.onPostResume()
        WindowCompat.setDecorFitsSystemWindows(window, false)
        window.navigationBarColor = 0

    }
}

