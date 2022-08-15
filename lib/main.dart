import 'package:aderis_health/util/colors.dart';
import 'package:flutter/material.dart';

import 'login/login_screen.dart';
import 'signup/signup.dart';
import 'splash_screen/splash_screen.dart';
import 'welcome_screen/welcome_screen.dart';

void main() {
  // runApp(
  //   DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  // );
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
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
      },
    );
  }
}