// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDLD8VS6bj7PLA3WGu7TmOPxV8nYYpt0DU',
    appId: '1:30900759515:web:d748c77fa671c0c2d3d5fe',
    messagingSenderId: '30900759515',
    projectId: 'tic-tac-toe-57abf',
    authDomain: 'tic-tac-toe-57abf.firebaseapp.com',
    storageBucket: 'tic-tac-toe-57abf.appspot.com',
    measurementId: 'G-V6ZVB0JHES',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcCGxoHfPCOzjoma4JzZkRXhPGyg6il6g',
    appId: '1:30900759515:android:e5e3901cedd5e376d3d5fe',
    messagingSenderId: '30900759515',
    projectId: 'tic-tac-toe-57abf',
    storageBucket: 'tic-tac-toe-57abf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDV_H0e00IOt0hBbwAqGgOqj5w1Lhh-IKQ',
    appId: '1:30900759515:ios:892395053d35b69ed3d5fe',
    messagingSenderId: '30900759515',
    projectId: 'tic-tac-toe-57abf',
    storageBucket: 'tic-tac-toe-57abf.appspot.com',
    iosClientId: '30900759515-s5bkkqg9ekhdg4sbbq1mn01iaci5tadb.apps.googleusercontent.com',
    iosBundleId: 'com.example.ticTacToe',
  );
}
