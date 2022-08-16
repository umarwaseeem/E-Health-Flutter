import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'create_new_password/create_new_pass_screen.dart';
import 'forgot_password/forgot_password_screen.dart';
import 'forgot_password/providers/forgot_password_provider.dart';
import 'forgot_password/reset_by_sms_screen/reset_by_sms_screen.dart';
import 'home_page/home_page.dart';
import 'login/login_screen.dart';
import 'signup/signup.dart';
import 'splash_screen/splash_screen.dart';
import 'welcome_screen/welcome_screen.dart';
import 'util/colors.dart';

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
    return MultiProvider(
      providers:  [
        ChangeNotifierProvider<ForgotPasswordProvider>(
          create: (_) => ForgotPasswordProvider(),
        ),
      ],
      child: MaterialApp(
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
          ForgotPasswordScreen.routeName: (context) =>
              const ForgotPasswordScreen(),
          ResetBySmsScreen.routeName: (context) => const ResetBySmsScreen(),
          CreateNewPassScreen.routeName: (context) =>
              const CreateNewPassScreen(),
          HomePageScreen.routeName: (context) => const HomePageScreen(),
        },
      ),
    );
  }
}
