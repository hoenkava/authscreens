import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pollpe_assignment/auth/add_phone_number.dart';
import 'package:pollpe_assignment/auth/enter_password.dart';
import 'package:pollpe_assignment/auth/login.dart';
import 'package:pollpe_assignment/auth/send_otp.dart';
import 'package:pollpe_assignment/auth/signup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pollpe Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}

