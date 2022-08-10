import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:harry_potter_mobdev_hackathon/widgets/hpchara_details.dart';

import '../models/harrypotter_model.dart';

class HPInformation extends StatelessWidget {
  HPInformation({required this.hpCharacters, Key? key}) : super(key: key);

  final List<HpCharacters> hpCharacters;
  List<Profile> profile=[];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        for (int i = 0; i < hpCharacters.length; i++)
          Stack(
            fit: StackFit.expand,
            children: [
            GestureDetector(
              child: Card(
                elevation: 10,
                color: Colors.transparent,
                child: ClipRRect (
                  borderRadius: BorderRadius.circular(8.0),
                  child: hpCharacters[i].image.isNotEmpty
                      ? CachedNetworkImage(
                    imageUrl: hpCharacters[i].image,
                        placeholder: (context, url) => CircularProgressIndicator(),
                    fit: BoxFit.cover,)
                      : CachedNetworkImage(
                    imageUrl:
                    'https://www.seekpng.com/png/detail/966-9665317_placeholder-image-person-jpg.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: (){
                profile.add(Profile(
                    hpCharacters[i].name,
                    hpCharacters[i].alternateNames,
                    hpCharacters[i].species,
                    hpCharacters[i].house,
                    hpCharacters[i].wizard,
                    hpCharacters[i].hogwartsStudent,
                    hpCharacters[i].hogwartsStaff,
                    hpCharacters[i].image,
                    hpCharacters[i].description
                ));
                Navigator.push(
                    context,
                MaterialPageRoute(builder: (context) => CharacterProfile(hpCharacter: profile)));
              },
            ),
              Positioned(child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(hpCharacters[i].name, style: hpCharacters[i].image.isNotEmpty?
                    const TextStyle(color: Colors.white, fontSize: 18, shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],)
                      :const TextStyle(color: Colors.black, fontSize: 18,
                  ),)
              )
              )
      ],
    )]);
  }
}

class Profile{
  final String name;
  final List<String> alternateNames;
  final String species;
  final String house;
  final bool wizard;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String image;
  final String description;

  Profile(
      this.name,
      this.alternateNames,
      this.species,
      this.house,
      this.wizard,
      this.hogwartsStudent,
      this.hogwartsStaff,
      this.image,
      this.description);

}
