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
    apiKey: 'AIzaSyDSyDVhwSkAVln_auNZaaefYzux37FuDLk',
    appId: '1:163063459174:web:5a1e59e1dc0004b353eca7',
    messagingSenderId: '163063459174',
    projectId: 'thesolarspark-c5432',
    authDomain: 'thesolarspark-c5432.firebaseapp.com',
    storageBucket: 'thesolarspark-c5432.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAX26yFT9q7bYg_QOnHJOnGGwK3USt-4vw',
    appId: '1:163063459174:android:08cede7e3977a50b53eca7',
    messagingSenderId: '163063459174',
    projectId: 'thesolarspark-c5432',
    storageBucket: 'thesolarspark-c5432.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9f74mwann-c-gvmwPhhJNCsP03aF70ZQ',
    appId: '1:163063459174:ios:8c233f9c889c6bfa53eca7',
    messagingSenderId: '163063459174',
    projectId: 'thesolarspark-c5432',
    storageBucket: 'thesolarspark-c5432.appspot.com',
    iosClientId: '163063459174-d069hgcm959gaa7cdprj1pvfp6jjpmg4.apps.googleusercontent.com',
    iosBundleId: 'com.solar.theSolarSpark',
  );
}
