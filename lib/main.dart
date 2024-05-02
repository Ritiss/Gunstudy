

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gunstudy/home.dart';
import 'package:gunstudy/login.dart';
import 'package:gunstudy/status.dart';
import 'package:gunstudy/registration.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => const Status(),
        'login': (context) => Login(),
        'reg':(context) => const Reg(),
        'home':(context) => const Home()
      },
    );
  }
}