import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:km_test/app.dart';
import 'package:km_test/app/data/providers/shared_pref.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  TbSharedPref().init();
  runApp(const App());
}
