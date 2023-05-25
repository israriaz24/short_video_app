
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
    apiKey: 'AIzaSyAe1riw5QttVpSm8a4AfBMOXcEGZ-ChIRw',
    appId: '1:681540505533:web:89d9435bb8292c32078cd4',
    messagingSenderId: '681540505533',
    projectId: 'video-app-fb283',
    authDomain: 'video-app-fb283.firebaseapp.com',
    storageBucket: 'video-app-fb283.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlkZl0gV_KucGHTGoSafkLCcmgLSHxPw8',
    appId: '1:681540505533:android:d91f1c3bad93632e078cd4',
    messagingSenderId: '681540505533',
    projectId: 'video-app-fb283',
    storageBucket: 'video-app-fb283.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpnarWYGdoBYPXKrja8fyK_npy6hRYWnI',
    appId: '1:681540505533:ios:1bf3e8c782d10e9e078cd4',
    messagingSenderId: '681540505533',
    projectId: 'video-app-fb283',
    storageBucket: 'video-app-fb283.appspot.com',
    iosClientId: '681540505533-fvoc9k2o572e35qja3hfb47j4uuodqu2.apps.googleusercontent.com',
    iosBundleId: 'com.example.shortVideoApp',
  );
}
