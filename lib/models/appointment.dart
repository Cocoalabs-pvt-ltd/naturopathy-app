import 'dart:convert';

class Appointment {
  String? id;
  DateTime? appointmentDateAndTime;
  String? doctorName;
  String? doctorSpeciality;
  String? modeOfAppointment;
  String? prescription;
  List<String>? medicine;
  List<String>? checkup;
  int? totalAmount;

  Appointment(
      {this.id,
      this.appointmentDateAndTime,
      this.doctorName,
      this.doctorSpeciality,
      this.modeOfAppointment,
      this.prescription,
      this.medicine,
      this.checkup,
      this.totalAmount});

  factory Appointment.fromJson(String str) =>
      Appointment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Appointment.fromMap(Map<String, dynamic> json) => Appointment(
      id: json["id"],
      appointmentDateAndTime: json["appointmentDateAndTime"],
      doctorName: json["doctorName"],
      doctorSpeciality: json["doctorSpeciality"],
      modeOfAppointment: json["modeOfAppointment"],
      prescription: json["prescription"],
      medicine: json["medicine"],
      checkup: json["checkup"],
      totalAmount: json["totalAmount"]);

  Map<String, dynamic> toMap() => {
        "id": id,
        "appointmentDateAndTime": appointmentDateAndTime,
        "doctorName": doctorName,
        "doctorSpeciality": doctorSpeciality,
        "modeOfAppointment": modeOfAppointment,
        "prescription": prescription,
        "medicine": medicine,
        "checkup": checkup,
        "totalAmount": totalAmount
      };
}
