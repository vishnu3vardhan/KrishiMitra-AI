import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Language"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _langButton(context, "English"),
            _langButton(context, "తెలుగు"),
            _langButton(context, "हिन्दी"),
            _langButton(context, "தமிழ்"),
            _langButton(context, "ಕನ್ನಡ"),
          ],
        ),
      ),
    );
  }

  Widget _langButton(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Text(text, style: const TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}