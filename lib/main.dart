import 'package:flutter/material.dart';
import 'core/app_routes.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const KrishiMitraApp());
}

class KrishiMitraApp extends StatelessWidget {
  const KrishiMitraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KrishiMitra AI',
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      initialRoute: '/splash',
      home: const SplashScreen(), // fallback if route fails
    );
  }
}