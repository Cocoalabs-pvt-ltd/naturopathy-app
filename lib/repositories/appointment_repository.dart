import 'dart:html';

import 'package:naturopathy/apis/api_provider.dart';
import 'package:naturopathy/apis/apis.dart';
import 'package:naturopathy/models/appointment.dart';

class AppointmentRepository {
  ApiProvider? _provider;

  // store appointment details
  Future<Appointment> storeAppointment(FormData data) async {
    final response = await _provider!
        .getJsonInstance()
        .post(Apis.storeAppointmentDetails, data: data);
    return Appointment.fromJson(response.data);
  }

  // store appointment details in user document
  Future<Appointment> storeAppointmentDetailsUser(
      String userId, FormData data) async {
    final userAppointmentUrl = "${Apis.getUserDetails}/$userId/appointments";
    final response =
        await _provider!.getJsonInstance().post(userAppointmentUrl, data: data);
    return Appointment.fromJson(response.data);
  }
}
