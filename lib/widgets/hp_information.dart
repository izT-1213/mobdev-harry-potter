import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/widgets/hpchara_details.dart';

import '../models/harrypotter_model.dart';

class HPInformation extends StatelessWidget {
  const HPInformation({required this.hpCharacters, Key? key}) : super(key: key);

  final List<HpCharacters> hpCharacters;

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
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                    fit: BoxFit.cover,)
                      : CachedNetworkImage(
                    imageUrl:
                    'https://www.seekpng.com/png/detail/966-9665317_placeholder-image-person-jpg.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(
                    context,
                MaterialPageRoute(builder: (context) => CharacterProfile(
                    name: hpCharacters[i].name,
                    alternateNames: hpCharacters[i].alternateNames,
                    species: hpCharacters[i].species,
                    house: hpCharacters[i].house,
                    image: hpCharacters[i].image,
                    description: hpCharacters[i].description
                )));
              },
            ),
              Positioned(child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(hpCharacters[i].name, style: hpCharacters[i].image.isNotEmpty?
                    const AkayaTelivigala(color: Colors.white, shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ], size: 20,)
                      :const AkayaTelivigala(color: Colors.black, size: 20,
                  ),)
              )
              )
      ],
    )]);
  }
}
