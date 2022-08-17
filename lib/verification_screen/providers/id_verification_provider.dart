import 'package:flutter/material.dart';

import '../widgets/id_type_widget.dart';

class IdVerificationProvider extends ChangeNotifier{

  List<IdTypeWidget> idTypes = [
    IdTypeWidget(text: 'Driver', selected: false),
    IdTypeWidget(text: 'Passport', selected: false),
    IdTypeWidget(text: 'ID', selected: false),
  ];

  void selectIdType(int index){
    for(var item in idTypes){
      item.selected = false;
    }
    idTypes[index].selected = true;
    notifyListeners();
  }


}