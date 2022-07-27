import 'package:naturopathy/apis/api_provider.dart';
import 'package:naturopathy/apis/apis.dart';
import 'package:naturopathy/models/doctor.dart';

class DoctorRepository {
  ApiProvider? _provider;

  //View all doctors
  Future<Doctor> getAllDoctors() async {
    final response =
        await _provider!.getJsonInstance().get(Apis.viewAllDoctors);
    return Doctor.fromJson(response.data);
  }

  // View all filtered doctors
  Future<Doctor> getAllFilteredDoctors() async {
    final response =
        await _provider!.getJsonInstance().get(Apis.viewAllFilteredDoctors);
    return Doctor.fromJson(response.data);
  }

  // view doctor by id
  Future<Doctor> getDoctorById(String doctorId) async {
    final doctorUrl = "${Apis.viewAllDoctors}/$doctorId";
    final response = await _provider!.getJsonInstance().get(doctorUrl);
    return Doctor.fromJson(response.data);
  }
}
