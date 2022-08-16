import 'package:flutter/material.dart';

import '../widgets/address_card_item.dart';

class AddressCardProvider extends ChangeNotifier {
  List<AddressCardItem> addressItems = [
    AddressCardItem(title: "Home", selected: false),
    AddressCardItem(title: "Apartment", selected: false),
    AddressCardItem(title: "Suite", selected: false),
  ];

  void selectAddressItem(int index) {
    for (var item in addressItems) {
      item.selected = false;
    }
    addressItems[index].selected = true;
    notifyListeners();
  }
}
