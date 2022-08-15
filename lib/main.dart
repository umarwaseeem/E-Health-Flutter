import 'package:aderis_health/util/colors.dart';
import 'package:flutter/material.dart';

import 'splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aderis Health App',
      theme: ThemeData(
        backgroundColor: mainColor,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
