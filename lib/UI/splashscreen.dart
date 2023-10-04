
import 'dart:async';

import 'package:assetmanagment/UI/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{

const  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

 @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10),
          ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => const LoginSecreen())));
  }

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.sizeOf(context);
    return  Scaffold(
      body:Container(
       height:size.height,
       width:size.width,
      decoration:const BoxDecoration(color:Color.fromRGBO(247 ,248, 249, 1)),
        child: Column(
          children:<Widget> [
            Expanded(
              child:  Center(child: Image.asset('assets/icone/logo.png'),
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
      ),
    );
  }
}