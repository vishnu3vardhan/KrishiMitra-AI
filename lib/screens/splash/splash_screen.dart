import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget languageText(String text, {double size = 20}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green.shade50,
          child: Stack(
            alignment: Alignment.center,
            children: [

              /// TOP (Hindi)
              Positioned(
                top: 120,
                child: languageText('कृषि मित्र AI'),
              ),

              /// BOTTOM (Kannada)
              Positioned(
                bottom: 120,
                child: languageText('ಕೃಷಿ ಮಿತ್ರ AI'),
              ),

              /// LEFT (Tamil)
              Positioned(
                left: 40,
                child: languageText('கிரிஷி மித்ரா AI'),
              ),

              /// RIGHT (English)
              Positioned(
                right: 40,
                child: languageText('KrishiMitra AI'),
              ),

              /// CENTER (Telugu - main)
              Text(
                'కృషిమిత్ర AI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}