import 'package:flutter/material.dart';

import '../models/hp_model.dart';

class HPInformation extends StatelessWidget {
  HPInformation({required this.hpCharacters, Key? key}) : super(key: key);

  final List<HpCharacters> hpCharacters;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: hpCharacters.length,
          itemBuilder: (context, index){
            return Container(
              child: Text('Entry ${hpCharacters[index].name}'),
            );
          },
      ),]
    );
  }
}
