import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hphouse_details.dart';

class HouseWithParams extends StatelessWidget {
  const HouseWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as String;
    return HPHouseDetails(house: data);
  }
}
