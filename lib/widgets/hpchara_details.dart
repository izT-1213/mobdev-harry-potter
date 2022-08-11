import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';

class CharacterProfile extends StatelessWidget {

  final String name;
  final List<String> alternateNames;
  final String species;
  final String house;
  final String image;
  final String description;

  const CharacterProfile({
    Key? key,
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.house,
    required this.image,
    required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name, style: const AkayaTelivigala(color: Colors.white, size: 25),),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
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
                    child: Card(
                      elevation: 10,
                      color: Colors.transparent,
                      child: ClipRRect (
                        borderRadius: BorderRadius.circular(8.0),
                        child: image.isNotEmpty
                            ? CachedNetworkImage(
                              imageUrl: image,
                              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                          fit: BoxFit.cover,)
                            : CachedNetworkImage(
                          imageUrl:
                          'https://www.seekpng.com/png/detail/966-9665317_placeholder-image-person-jpg.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(name,
                      style: const AkayaTelivigala(fontWeight: FontWeight.bold, size: 25, color: Colors.black),
                      textAlign: TextAlign.left,),
                  const SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        house.isNotEmpty ? const SizedBox(
                           width: 100,
                          child: Text("House", style: AkayaTelivigala(
                            size: 20,
                            fontWeight: FontWeight.bold, color: Colors.black),),)
                        : const SizedBox( width: 100,),
                        house.isNotEmpty ? const Text(":", style: AkayaTelivigala(size: 18, fontWeight: FontWeight.bold, color: Colors.black),)
                        : const SizedBox(width: 100,),
                        const SizedBox(width: 25,),
                        house.isNotEmpty ? Text(house, style: const AkayaTelivigala(
                          size: 20,
                          color: Colors.black
                        ),)
                            : const SizedBox(width: 50,),
                      ]
                    ),
                    ),
                  const SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 100,
                          child: Text("Species", style: AkayaTelivigala(
                            size: 20,
                            fontWeight: FontWeight.bold,
                          color: Colors.black),),),
                        const Text(":", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        const SizedBox(width: 25,),
                        Text(species, style: const AkayaTelivigala(
                            size: 20,
                          color: Colors.black
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 100,
                          child: Text("Description", style: AkayaTelivigala(
                            size: 20,
                            fontWeight: FontWeight.bold,
                          color: Colors.black),),),
                        Text(":", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)])),
                  const SizedBox(height: 8,),
                  Text(description, style: const AkayaTelivigala(size: 17, color: Colors.black), textAlign: TextAlign.justify,),
            ],
            )
            ),
      ),
      );
  }
}
