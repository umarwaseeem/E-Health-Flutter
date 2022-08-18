import 'package:flutter/cupertino.dart';

import '../add_insurance_screen/add_insurance_screen.dart';
import '../add_insurance_screen/insurance_cards_screen.dart';
import '../add_payment_method/add_payment_method_screen.dart';
import '../address_screen/address_screen.dart';
import '../create_new_password/create_new_pass_screen.dart';
import '../create_profile/create_profile_screen.dart';
import '../forgot_password/forgot_password_screen.dart';
import '../forgot_password/reset_by_sms_screen/reset_by_sms_screen.dart';
import '../home_page/home_page.dart';
import '../login/login_screen.dart';
import '../prefered_pharmacy_screen/preffered_pharmacy_screen.dart';
import '../signup/signup.dart';
import '../verification_screen/verification_driver_screen.dart';
import '../verification_screen/verification_id_screen.dart';
import '../verification_screen/verification_passport_screen.dart';
import '../verification_screen/verification_screen.dart';
import '../welcome_screen/welcome_screen.dart';

Map<String, WidgetBuilder> get allRoutes {
  return {
    LoginScreen.routeName: (context) => const LoginScreen(),
    WelcomeScreen.routeName: (context) => const WelcomeScreen(),
    SignUpScreen.routeName: (context) => const SignUpScreen(),
    ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
    ResetBySmsScreen.routeName: (context) => const ResetBySmsScreen(),
    CreateNewPassScreen.routeName: (context) => const CreateNewPassScreen(),
    HomePageScreen.routeName: (context) => const HomePageScreen(),
    CreateProfileScreen.routeName: (context) => const CreateProfileScreen(),
    AddInsuranceScreen.routeName: (context) => const AddInsuranceScreen(),
    InsuranceCardsScreen.routeName: (context) => const InsuranceCardsScreen(),
    AddressScreen.routeName: (context) => const AddressScreen(),
    PrefferedPharmacyScreen.routeName: (context) =>
        const PrefferedPharmacyScreen(),
    AddPaymentMethodScreen.routeName: (context) =>
        const AddPaymentMethodScreen(),
    VerificationScreen.routeName: (context) => const VerificationScreen(),
    VerificationIdScreen.routeName: (context) => const VerificationIdScreen(),
    VerificationDriverScreen.routeName: (context) =>
        const VerificationDriverScreen(),
    VerificationPassportScreen.routeName: (context) =>
        const VerificationPassportScreen(),
  };
}
