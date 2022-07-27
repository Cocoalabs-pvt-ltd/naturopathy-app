// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'dart:convert';

import 'package:naturopathy/models/appointment.dart';
import 'package:naturopathy/models/campaign.dart';
import 'package:naturopathy/models/order.dart';

class User {
  User(
      {this.apiToken,
      this.id,
      this.name,
      this.username,
      this.email,
      this.phoneNumber,
      this.gender,
      this.height,
      this.weight,
      this.location,
      this.haveAllergies,
      this.kindOfAllergies,
      this.takeMedication,
      this.nameOfMedication,
      this.hadInjuries,
      this.hadChronicIllnesses,
      this.beenHospitalized,
      this.hadSurgeries,
      this.nameOfSurgery,
      this.familyHealthIssue,
      this.occupation,
      this.stress,
      this.alcohol,
      this.smoke,
      this.joinedCampaigns,
      this.appointments,
      this.orders});

  String? apiToken;
  String? id;
  String? name;
  String? username;
  String? email;
  int? phoneNumber;
  String? gender;
  int? height;
  int? weight;
  String? location;
  bool? haveAllergies;
  List<dynamic>? kindOfAllergies;
  bool? takeMedication;
  String? nameOfMedication;
  bool? hadInjuries;
  bool? hadChronicIllnesses;
  bool? beenHospitalized;
  bool? hadSurgeries;
  String? nameOfSurgery;
  String? familyHealthIssue;
  String? occupation;
  bool? stress;
  bool? alcohol;
  bool? smoke;
  List<Campaign>? joinedCampaigns;
  List<Appointment>? appointments;
  List<Orders>? orders;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
      id: json["_id"],
      apiToken: json['apiToken'],
      name: json["name"],
      username: json["username"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      gender: json["gender"],
      height: json["height"],
      weight: json["weight"],
      location: json["location"],
      haveAllergies: json["haveAllergies"],
      kindOfAllergies:
          List<dynamic>.from(json["kindOfAllergies"].map((x) => x)),
      takeMedication: json["takeMedication"],
      nameOfMedication: json["nameOfMedication"],
      hadInjuries: json["hadInjuries"],
      hadChronicIllnesses: json["hadChronicIllnesses"],
      beenHospitalized: json["beenHospitalized"],
      hadSurgeries: json["hadSurgeries"],
      nameOfSurgery: json["nameOfSurgery"],
      familyHealthIssue: json["familyHealthIssue"],
      occupation: json["occupation"],
      stress: json["stress"],
      alcohol: json["alcohol"],
      smoke: json["smoke"],
      joinedCampaigns: List<Campaign>.from(
        json["joinedCampaigns"].map((x) => Campaign.fromMap(x)),
      ),
      appointments: List<Appointment>.from(
          json["appointments"].map((x) => Appointment.fromMap(x))),
      orders: List<Orders>.from(json["orders"].map((x) => Orders.fromMap(x))));

  Map<String, dynamic> toMap() => {
        "_id": id,
        "apiToken": apiToken,
        "name": name,
        "username": username,
        "email": email,
        "phoneNumber": phoneNumber,
        "gender": gender,
        "height": height,
        "weight": weight,
        "location": location,
        "haveAllergies": haveAllergies,
        "kindOfAllergies": List<dynamic>.from(kindOfAllergies!.map((x) => x)),
        "takeMedication": takeMedication,
        "nameOfMedication": nameOfMedication,
        "hadInjuries": hadInjuries,
        "hadChronicIllnesses": hadChronicIllnesses,
        "beenHospitalized": beenHospitalized,
        "hadSurgeries": hadSurgeries,
        "nameOfSurgery": nameOfSurgery,
        "familyHealthIssue": familyHealthIssue,
        "occupation": occupation,
        "stress": stress,
        "alcohol": alcohol,
        "smoke": smoke,
        "joinedCampaigns":
            List<dynamic>.from(joinedCampaigns!.map((x) => x.toMap())),
        "appointments": List<dynamic>.from(appointments!.map((x) => x.toMap())),
        "orders": List<dynamic>.from(orders!.map((x) => x.toMap()))
      };
}
