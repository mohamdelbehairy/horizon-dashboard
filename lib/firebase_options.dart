// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDCPDq7BFmn64AAierW9oVbrzBddW0t0HM',
    appId: '1:280254435074:web:62f9ea62e170f79b7afc1b',
    messagingSenderId: '280254435074',
    projectId: 'horizon-3b275',
    authDomain: 'horizon-3b275.firebaseapp.com',
    storageBucket: 'horizon-3b275.appspot.com',
    measurementId: 'G-PZ4ZDCLVSR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyrWwLgsUkMew6QUr3T1C2V7yPbfx8Qhk',
    appId: '1:280254435074:android:97f6bd1456bd64b07afc1b',
    messagingSenderId: '280254435074',
    projectId: 'horizon-3b275',
    storageBucket: 'horizon-3b275.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFlD0vSCBFj_akVSoXWue1DmgZmZCgxKE',
    appId: '1:280254435074:ios:bc8198eb1024ca777afc1b',
    messagingSenderId: '280254435074',
    projectId: 'horizon-3b275',
    storageBucket: 'horizon-3b275.appspot.com',
    iosBundleId: 'com.example.horizon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFlD0vSCBFj_akVSoXWue1DmgZmZCgxKE',
    appId: '1:280254435074:ios:bc8198eb1024ca777afc1b',
    messagingSenderId: '280254435074',
    projectId: 'horizon-3b275',
    storageBucket: 'horizon-3b275.appspot.com',
    iosBundleId: 'com.example.horizon',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDCPDq7BFmn64AAierW9oVbrzBddW0t0HM',
    appId: '1:280254435074:web:2998fdfe9bb4d0107afc1b',
    messagingSenderId: '280254435074',
    projectId: 'horizon-3b275',
    authDomain: 'horizon-3b275.firebaseapp.com',
    storageBucket: 'horizon-3b275.appspot.com',
    measurementId: 'G-ETTZ7LVP0B',
  );
}
