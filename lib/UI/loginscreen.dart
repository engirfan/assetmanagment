import 'package:assetmanagment/widget/loginform.dart';
import 'package:flutter/material.dart';
class LoginSecreen extends StatelessWidget{

const LoginSecreen({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
           body: Column(
             children: [
             const SizedBox(height: 100),
               Center(
                 child: Container(
                   width: 100,
                   height: 100,
                 decoration: const BoxDecoration(
                  image:  DecorationImage(
                 image:  AssetImage("assets/icone/logo.png"),
                 fit: BoxFit.fill,
                      )
                    )
                 ),
               ),
              const LoginFrom(),
             ],
           ),
    );
  }
}
  