import 'package:flutter/material.dart';

import '../widgets/payment_method_card.dart';

class PaymentMethodProvider extends ChangeNotifier {
  List<PaymentMethodCard> paymentMethods = [
    PaymentMethodCard(
      text: "Credit Card",
      icon: Icons.credit_card,
      selected: false,
    ),
    PaymentMethodCard(
      text: "Apple Pay",
      icon: Icons.apple,
      selected: false,
    ),
  ];

  void selectPaymentMethod(int index) {
    for (var item in paymentMethods) {
      item.selected = false;
    }
    paymentMethods[index].selected = true;
    notifyListeners();
  }
}
