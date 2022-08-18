import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'add_payment_method/providers/payment_method_provider.dart';
import 'address_screen/providers/address_card_provider.dart';
import 'doctor_details_screen/providers/doctor_service_provider.dart';
import 'forgot_password/providers/forgot_password_provider.dart';
import 'home_page/home_page.dart';
import 'routes/routes.dart';
import 'verification_screen/providers/id_verification_provider.dart';
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
      providers: [
        ChangeNotifierProvider<ForgotPasswordProvider>(
          create: (_) => ForgotPasswordProvider(),
        ),
        ChangeNotifierProvider<AddressCardProvider>(
          create: (_) => AddressCardProvider(),
        ),
        ChangeNotifierProvider<PaymentMethodProvider>(
          create: (_) => PaymentMethodProvider(),
        ),
        ChangeNotifierProvider<IdVerificationProvider>(
          create: (_) => IdVerificationProvider(),
        ),
        ChangeNotifierProvider<DoctorServiceProvider>(
          create: (_) => DoctorServiceProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aderis Health App',
        theme: ThemeData(
          backgroundColor: mainColor,
          primarySwatch: Colors.blue,
        ),
        home: const HomePageScreen(),
        routes: allRoutes,
      ),
    );
  }
}
