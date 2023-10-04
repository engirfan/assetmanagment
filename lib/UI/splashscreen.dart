import 'dart:async';
import 'package:assetmanagment/UI/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginFrom())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: SvgPicture.asset('assets/icone/logo.svg',
                  width: 173, height: 134),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text("From"),
          ),
          const SizedBox(height: 60),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text("Transport Authority"),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
