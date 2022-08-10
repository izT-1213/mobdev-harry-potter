import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/harrypotter_model.dart';

class HPInformation extends StatelessWidget {
  HPInformation({required this.hpCharacters, Key? key}) : super(key: key);

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
          Card(
            elevation: 10,
            color: Colors.transparent,
            child: ClipRRect (
              borderRadius: BorderRadius.circular(8.0),
              child: hpCharacters[i].image.isNotEmpty
                  ? CachedNetworkImage(
                    imageUrl: hpCharacters[i].image,
                    placeholder: (context, url) => CircularProgressIndicator(),
                fit: BoxFit.cover,
              )
                  : CachedNetworkImage(
                imageUrl:
                'https://www.seekpng.com/png/detail/966-9665317_placeholder-image-person-jpg.png',
                fit: BoxFit.cover,
              ),
            ),
          )
      ],
    );
  }
}
