import 'dart:html';
import 'package:naturopathy/models/appointment.dart';
import 'package:naturopathy/repositories/appointment_repository.dart';

class AppointmentBloc {
  late AppointmentRepository _appointmentRepository;

  AppointmentBloc() {
    _appointmentRepository = AppointmentRepository();
  }

  // store appointment
  Future<Appointment> storeAppointmentDetails(FormData data) async {
    try {
      final appointmentDetails =
          await _appointmentRepository.storeAppointment(data);
      return appointmentDetails;
    } catch (err) {
      rethrow;
    }
  }

  // Store appointment details in user document
  Future<Appointment> storeAppointmentDetailsUser(
      String userId, FormData data) async {
    try {
      final appointmentDetails = await _appointmentRepository
          .storeAppointmentDetailsUser(userId, data);
      return appointmentDetails;
    } catch (err) {
      rethrow;
    }
  }
}
