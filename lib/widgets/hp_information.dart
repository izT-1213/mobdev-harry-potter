import 'package:flutter/material.dart';

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
      for(int i = 0; i < hpCharacters.length; i++) Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(hpCharacters[i].image),
          )
        ),
        child: Text(hpCharacters[i].name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        )),
      )
    ]);
  }
}
