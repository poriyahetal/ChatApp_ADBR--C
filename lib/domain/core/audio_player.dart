import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_template/domain/core/constants.dart';

class AppAudioPlayer {
  static final AppAudioPlayer _instance = AppAudioPlayer._internal();

  factory AppAudioPlayer() => _instance;

  AppAudioPlayer._internal();

  static final AudioCache _player = AudioCache(prefix: 'assets/sounds/');
  static AudioPlayer _playerStopper = AudioPlayer();

  static void loadSounds() {
    _player.loadAll([
      AppConstants.ringtoneUri,
      AppConstants.callerTuneUri,
      AppConstants.dialertoneUri,
    ]);
  }

  static Future<void> playRingtone() async {
    _playerStopper = await _player.play(AppConstants.ringtoneUri);
  }

  static Future<void> playCustomRingtone(String? path) async {
    if (path != null) {
      try {
        await _playerStopper.play(path, isLocal: true);
      } catch (e) {
        print("playCustomRingtoneError occured: $e");
      }
      print('local should be played here');
    }
  }

  static void stopRingtone() {
    _playerStopper.stop();
  }

  static Future<void> playCallertune() async {
    _playerStopper = await _player.play(AppConstants.callerTuneUri);
  }

  static Future<void> playdialerTone() async {
    _playerStopper = await _player.play(AppConstants.dialertoneUri);
  }

  static Future<void> playCustomCallertune(String path) async {
    _playerStopper.play(path, isLocal: true);
  }

  static void stopDialerTone() {
    _playerStopper.stop();
  }

  static void stopCallertune() {
    _playerStopper.stop();
  }
}
