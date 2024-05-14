import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDSiVa6HjXjN2k2Gh4hBjIrGq_TLS2LX_g",
            authDomain: "aoun-e8577.firebaseapp.com",
            projectId: "aoun-e8577",
            storageBucket: "aoun-e8577.appspot.com",
            messagingSenderId: "1052041019709",
            appId: "1:1052041019709:web:70a190b04dda553c364554"));
  } else {
    await Firebase.initializeApp();
  }
}
