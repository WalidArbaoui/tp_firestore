import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tp_auth/screens/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDSsqc4i4tX9mCuMblJDFqllkS-q6jqLN0',
          appId: '1:639694537511:android:eb42c3dd4ec5ea7be21f02',
          messagingSenderId: '639694537511',
          projectId: 'flutterapp-9c195')); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AuthScreen(),
    );
  }
}
