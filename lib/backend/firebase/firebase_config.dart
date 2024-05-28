import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBMS8gLYzy6y973-MKjrXs9w1Zbm1qsqzE",
            authDomain: "sion-do1nxv.firebaseapp.com",
            projectId: "sion-do1nxv",
            storageBucket: "sion-do1nxv.appspot.com",
            messagingSenderId: "1078233436918",
            appId: "1:1078233436918:web:2b458c7c38b04556e152d7"));
  } else {
    await Firebase.initializeApp();
  }
}
