import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
            'DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA947c11RbfULiQcTyZ92CzMT6pf26huC0',
    appId: '1:82660409966:android:c0c0edfd6dcb9b83009c7f',
    messagingSenderId: '82660409966',
    projectId: 'hans-969de',
    storageBucket: 'okthboot.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA947c11RbfULiQcTyZ92CzMT6pf26huC0',
    appId: '1:82660409966:android:c0c0edfd6dcb9b83009c7f',
    messagingSenderId: '82660409966',
    projectId: 'hans-969de',
    storageBucket: 'okthboot.appspot.com',
    iosBundleId: 'com.iewa.octobus',
  );
}
