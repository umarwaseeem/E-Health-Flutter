import 'package:flutter/material.dart';

import '../widgets/password_reset_method.dart';

class ForgotPasswordProvider extends ChangeNotifier {
  List<PasswordResetMethod> passwordResetMethods = [
    PasswordResetMethod(
      image: "assets/images/msg-icon.png",
      title: "Via SMS",
      subtitle: "+11 11*****11",
      selected: false,
    ),
    PasswordResetMethod(
      image: "assets/images/mail-icon.png",
      title: "Via Email",
      subtitle: "abc@gmail.com",
      selected: false,
    ),
  ];

  void selectMethod(int index) {
    for (var element in passwordResetMethods) {
      element.selected = false;
    }
    passwordResetMethods[index].selected = true;
    notifyListeners();
  }

  bool checkIfAllSelected() {
    for (var element in passwordResetMethods) {
      if (element.selected == true) {
        return true;
      }
    }
    return false;
  }
}
