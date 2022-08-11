import 'package:flutter/material.dart';

import '../fonts/akaya_teliviga.dart';
import '../pages/bottom_navbar.dart';


class Student extends StatelessWidget {
  const Student({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            // TODO: Add code for staff page here
          ),
        ),
      ),

    );
  }
}
