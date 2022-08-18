import 'package:flutter/material.dart';

import '../widgets/doctor_service_type_widget.dart';

class DoctorServiceProvider extends ChangeNotifier {
  List<DoctorServiceTypeWidget> services = [
    DoctorServiceTypeWidget(
      serviceName: "Online Consult",
      isSelected: true,
    ),
    DoctorServiceTypeWidget(
      serviceName: "Appointment",
      isSelected: false,
    ),
  ];

  void selectService(int index) {
    for (var element in services) {
      element.isSelected = false;
    }
    services[index].isSelected = true;
    notifyListeners();
  }
}
