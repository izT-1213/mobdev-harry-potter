import 'package:flutter/material.dart';

import '../fonts/akaya_teliviga.dart';
import 'bottom_navbar.dart';


class Student extends StatelessWidget {
  const Student({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student",
          style: AkayaTelivigala(
              color: Colors.black, size: 25, fontWeight: FontWeight.bold),
        ),
      ),
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
      bottomNavigationBar: Navbar(
        isStudent: true,
      ),
    );
  }
}
