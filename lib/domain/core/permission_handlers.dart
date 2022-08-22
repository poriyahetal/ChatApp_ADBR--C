import 'package:permission_handler/permission_handler.dart';

class PermissionHandlers {
  static Future<bool> handleCallPermissions() async {
    final PermissionStatus cameraStatus = await Permission.camera.request();
    final PermissionStatus micStatus = await Permission.microphone.request();
    // final PermissionStatus micStatus = await Permission.
    if (cameraStatus.isGranted && micStatus.isGranted) {
      return true;
    } else {
      return false;
    }
  }
}
