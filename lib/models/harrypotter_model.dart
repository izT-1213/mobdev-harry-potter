import 'dart:convert';

class HpCharacters {
  HpCharacters({
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.house,
    required this.wizard,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.image,
    required this.description,
  });

  final String name;
  final List<String> alternateNames;
  final String species;
  final String house;
  final bool wizard;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String image;
  final String description;

  factory HpCharacters.fromJson(String str) => HpCharacters.fromMap(json.decode(str));

  factory HpCharacters.fromMap(Map<String, dynamic> json) => HpCharacters(
    name: json["name"],
    alternateNames: List<String>.from(json["alternate_names"].map((x) => x)),
    species: json["species"],
    house: json['house'],
    wizard: json["wizard"],
    hogwartsStudent: json["hogwartsStudent"],
    hogwartsStaff: json["hogwartsStaff"],
    image: json["image"],
    description: json["description"] == null ? null : json["description"],
  );
}
