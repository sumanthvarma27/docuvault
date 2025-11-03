import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseCheckScreen extends StatefulWidget {
  const FirebaseCheckScreen({super.key});

  @override
  State<FirebaseCheckScreen> createState() => _FirebaseCheckScreenState();
}

class _FirebaseCheckScreenState extends State<FirebaseCheckScreen> {
  String _status = "Checking Firebase connection...";

  @override
  void initState() {
    super.initState();
    _verifyFirebase();
  }

  Future<void> _verifyFirebase() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _status = "✅ Firebase initialized successfully!";
      });
    } catch (e) {
      setState(() {
        _status = "❌ Firebase failed to initialize: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Connection Test")),
      body: Center(
        child: Text(
          _status,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
