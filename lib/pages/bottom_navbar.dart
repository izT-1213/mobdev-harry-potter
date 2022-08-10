import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/homepage.dart';


class Navbar extends StatelessWidget {
  Navbar({required this.isHome, required this.isAboutUs, Key? key})
      : super(key: key);

  bool isHome = false;
  bool isAboutUs = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton.icon(
            onPressed: isHome? null: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            style: isHome? TextButton.styleFrom(backgroundColor: Colors.amber) : null,
            label: const Text(
              "Home",
              style: AkayaTelivigala(color: Colors.white, size: 16)
            ),
          ),
          TextButton.icon(
            onPressed: isAboutUs? null: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUs()),
              );
            },
            icon: const Icon(Icons.info_outline, color: Colors.white),
            style: isAboutUs? TextButton.styleFrom(backgroundColor: Colors.amber) : null,
            label: const Text(
              "About Us",
              style: AkayaTelivigala(color: Colors.white, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
