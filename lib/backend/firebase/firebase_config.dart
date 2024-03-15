import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAflABLae5OUsyR8FzqyDCEXKvoh8FgxW8",
            authDomain: "proyecto-excalibur-tech-clh29l.firebaseapp.com",
            projectId: "proyecto-excalibur-tech-clh29l",
            storageBucket: "proyecto-excalibur-tech-clh29l.appspot.com",
            messagingSenderId: "742773725596",
            appId: "1:742773725596:web:3748023898818667095059"));
  } else {
    await Firebase.initializeApp();
  }
}
