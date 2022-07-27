import 'package:naturopathy/models/doctor.dart';
import 'package:naturopathy/repositories/doctor_repository.dart';

class DoctorBloc {
  late DoctorRepository _repository;

  DoctorBloc() {
    _repository = DoctorRepository();
  }

  // get all doctors
  getAllDoctors() async {
    try {
      Stream<Doctor> doctors = _repository.getAllDoctors().asStream();
      return doctors;
    } catch (err) {
      rethrow;
    }
  }

  // get filtered doctor
  getFilteredDoctors() {
    try {
      Stream<Doctor> doctors = _repository.getAllFilteredDoctors().asStream();
      return doctors;
    } catch (err) {
      rethrow;
    }
  }

  //get individual doctors
  getIndividualDoctor(String id) {
    try {
      Stream<Doctor> doctor = _repository.getDoctorById(id).asStream();
      return doctor;
    } catch (err) {
      rethrow;
    }
  }
}
