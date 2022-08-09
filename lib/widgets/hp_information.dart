import 'package:flutter/material.dart';

import '../models/hp_model.dart';

class HPInformation extends StatelessWidget {
  const HPInformation({required this.hpCharacters, Key? key}) : super(key: key);

  final HpCharacters hpCharacters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HP Information Test"),
      ),
      body: Center(
        child: Text(hpCharacters.name[1]),
      ),
    );
  }
}
