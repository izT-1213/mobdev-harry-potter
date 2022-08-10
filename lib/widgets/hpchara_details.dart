import 'package:flutter/material.dart';

class CharacterProfile extends StatelessWidget {

  final List<dynamic> hpCharacter;

  const CharacterProfile({required this.hpCharacter, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hpCharacter[0].name),
      ),
      body: Center(
        child: Column(
          )
      ),
    );
  }
}
