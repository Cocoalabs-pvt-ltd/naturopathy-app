import 'dart:convert';

class Campaign {
  String? id;
  String? title;
  String? description;
  DateTime? createdAt;
  String? createdBy;

  Campaign(
      {this.id, this.title, this.description, this.createdAt, this.createdBy});

  factory Campaign.fromJson(String str) => Campaign.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Campaign.fromMap(Map<String, dynamic> json) => Campaign(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      createdAt: json["createdAt"],
      createdBy: json["createdBy"]);

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "description": description,
        "createdAt": createdAt,
        "createdBy": createdBy
      };
}
