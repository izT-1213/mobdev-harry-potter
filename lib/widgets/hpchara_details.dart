import 'package:flutter/material.dart';

class CharacterProfile extends StatelessWidget {

  final String name;
  final List<String> alternateNames;
  final String species;
  final String house;
  final bool wizard;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String image;
  final String description;

  const CharacterProfile({
    Key? key,
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.house,
    required this.wizard,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.image,
    required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover))),
                  const SizedBox(height: 15,),
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      textAlign: TextAlign.left,),
                  const SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const Text("House :", style: TextStyle(
                          fontSize: 18,
                            fontWeight: FontWeight.bold),),
                        const SizedBox(width: 25,),
                        Text(house, style: const TextStyle(
                          fontSize: 18
                        ),),
                      ]
                    ),
                    ),
                  const SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const Text("Species :", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),
                        const SizedBox(width: 25,),
                        Text(species, style: const TextStyle(
                            fontSize: 18
                        ),),
                      ],
                    ),
                  ),
                  Text(description),
            ],
            )
            ),
      ),
      );
  }
}
