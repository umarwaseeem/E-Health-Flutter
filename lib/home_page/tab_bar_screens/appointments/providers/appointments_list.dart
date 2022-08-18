import '../widgets/previous_appointment_card.dart';
import '../widgets/upcoming_appointment_card.dart';

List<AppointementCard> upComingAppointments = [
  const AppointementCard(
    drName: "Dr Rebekka",
    drDepartment: "Psychiatry",
    image: "assets/images/doctor.png",
  ),
];
List<PreviousAppointementCard> previousAppointments = [
  const PreviousAppointementCard(
    drName: "Dr Rebekka",
    drDepartment: "Psychiatry",
    image: "assets/images/doctor.png",
    status: true,
  ),
  const PreviousAppointementCard(
    drName: "Dr Rebekka",
    drDepartment: "Psychiatry",
    image: "assets/images/doctor.png",
    status: false,
  ),
];
