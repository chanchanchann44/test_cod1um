import 'dart:convert';

PersonProfile personProfileFromJson(String str) => PersonProfile.fromJson(json.decode(str));

String personProfileToJson(PersonProfile data) => json.encode(data.toJson());

class PersonProfile {
  PersonProfile({
    this.profile,
  });

  List<Profile> profile;

  factory PersonProfile.fromJson(Map<String, dynamic> json) => PersonProfile(
    profile: json["profile"] == null ? null : List<Profile>.from(json["profile"].map((x) => Profile.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "profile": profile == null ? null : List<dynamic>.from(profile.map((x) => x.toJson())),
  };
}

class Profile {
  Profile({
    this.name,
    this.email,
    this.birthDate,
    this.address,
  });

  String name;
  String email;
  String birthDate;
  String address;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    birthDate: json["birthDate"] == null ? null : json["birthDate"],
    address: json["address"] == null ? null : json["address"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "birthDate": birthDate == null ? null : birthDate,
    "address": address == null ? null : address,
  };
}
