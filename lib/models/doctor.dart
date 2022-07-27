import 'dart:convert';

class Doctor {
  String? id;
  String? name;
  String? speciality;
  String? qualification;
  int? experience;
  int? rating;
  List<DateTime>? timeSlots;

  Doctor(
      {this.id,
      this.name,
      this.speciality,
      this.qualification,
      this.experience,
      this.rating,
      this.timeSlots});

  factory Doctor.fromJson(String str) => Doctor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Doctor.fromMap(Map<String, dynamic> json) => Doctor(
      id: json["id"],
      name: json["name"],
      speciality: json["speciality"],
      qualification: json["qualification"],
      experience: json["experience"],
      rating: json["rating"],
      timeSlots: json["timeSlots"]);

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "speciality": speciality,
        "qualification": qualification,
        "experience": experience,
        "rating": rating,
        "timeSlots": timeSlots
      };
}
