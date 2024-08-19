import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBNIm4UrtZGMxlaM8bZTRvoRZ56WeR_-gE",
            authDomain: "jag-shop.firebaseapp.com",
            projectId: "jag-shop",
            storageBucket: "jag-shop.appspot.com",
            messagingSenderId: "862589425531",
            appId: "1:862589425531:web:1a66bdb9782c9e4c3d0fde",
            measurementId: "G-JRFFDQX0F5"));
  } else {
    await Firebase.initializeApp();
  }
}
