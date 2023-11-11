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
        return macos;
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
    apiKey: 'AIzaSyAUXRHSQlVkYhRUkdsSFOlW0IWVDi1c95U',
    appId: '1:421715350507:web:ee73e01f00df3e4cd03fae',
    messagingSenderId: '421715350507',
    projectId: 'admin-customer-panel-project',
    authDomain: 'admin-customer-panel-project.firebaseapp.com',
    storageBucket: 'admin-customer-panel-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2Mmlv2V5HiuzZ4ps1-XEnibv_i257jZg',
    appId: '1:421715350507:android:4250014329453bd9d03fae',
    messagingSenderId: '421715350507',
    projectId: 'admin-customer-panel-project',
    storageBucket: 'admin-customer-panel-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEZLgnTY-8iTl_2sCuOm1wBLWN7whHhUo',
    appId: '1:421715350507:ios:e04132717f33fe7ed03fae',
    messagingSenderId: '421715350507',
    projectId: 'admin-customer-panel-project',
    storageBucket: 'admin-customer-panel-project.appspot.com',
    iosClientId: '421715350507-solh9th78du5e5fs1o7ulaiju31qqtq3.apps.googleusercontent.com',
    iosBundleId: 'com.example.multiVendorApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEZLgnTY-8iTl_2sCuOm1wBLWN7whHhUo',
    appId: '1:421715350507:ios:4619927e25660931d03fae',
    messagingSenderId: '421715350507',
    projectId: 'admin-customer-panel-project',
    storageBucket: 'admin-customer-panel-project.appspot.com',
    iosClientId: '421715350507-5sp9gg3vap12muvt61rnl6gpirenrdf3.apps.googleusercontent.com',
    iosBundleId: 'com.example.multiVendorApp.RunnerTests',
  );
}