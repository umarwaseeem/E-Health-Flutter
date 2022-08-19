import 'package:flutter/material.dart';

import '../widgets/appointment_type_widget.dart';

class AppointmentTypeProvider extends ChangeNotifier {
  List<AppointmentType> appointmentType = [
    AppointmentType(
      title: 'Upcoming',
      selected: false,
    ),
    AppointmentType(
      title: 'Previous',
      selected: true,
    ),
  ];

  void selectAppointmentType(int index) {
    for (var element in appointmentType) {
      element.selected = false;
    }
    appointmentType[index].selected = true;
    notifyListeners();
  }
}
