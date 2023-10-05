import 'package:assetmanagment/UI/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // fontFamily: 'Alexandria-Regular_Bold',
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          fontFamily: GoogleFonts.alexandria().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffffa500)),
          primaryColor: const Color(0xffffa500),
          useMaterial3: true,
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            fillColor: Colors.white,
          ),
          textTheme: const TextTheme(
            displaySmall: TextStyle(fontSize: 12, color: Colors.black),
            displayMedium: TextStyle(
              fontSize: 24,
            ),
            displayLarge: TextStyle(
                fontSize: 34, letterSpacing: 0.25, fontWeight: FontWeight.bold),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              fixedSize: const Size(327, 65),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
            ),
          ),
          scaffoldBackgroundColor: const Color(0xfff7f8f9)),
      home: const SplashScreen(),
    );
  }
}
