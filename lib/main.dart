import 'package:docuvault/screens/firebase_check_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  runApp(const DocuVaultApp());
}

class DocuVaultApp extends StatelessWidget {
  const DocuVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DocuVault',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirebaseCheckScreen(), // temporary testing screen
    );
  }
}
