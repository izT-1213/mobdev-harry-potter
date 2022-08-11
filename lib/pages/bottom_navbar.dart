import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/homepage.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hpstaffs.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hpstudents.dart';

// This class is for bottom navigation widget in all pages - just call bottomNavigationBar: Navbar() under Scaffold
class Navbar extends StatelessWidget {
  Navbar({
    // By default, all states are false so please set state = true when in corresponding page
    this.isHome = false,
    this.isAboutUs = false,
    this.isStudent = false,
    this.isStaff = false,
    Key? key})
      : super(key: key);

  bool isHome = false;
  bool isAboutUs = false;
  bool isStudent = false;
  bool isStaff = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.brown,
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
            style: isHome? TextButton.styleFrom(backgroundColor: Colors.yellow.shade800) : null,
            label: const Text(
              "Home",
              style: AkayaTelivigala(color: Colors.white, size: 16)
            ),
          ),
          TextButton.icon(
            onPressed: isStudent? null: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HPStudents()),
              );
            },
            icon: const Icon(
              Icons.school,
              color: Colors.white,
            ),
            style: isStudent? TextButton.styleFrom(backgroundColor: Colors.yellow.shade800) : null,
            label: const Text(
                "Students",
                style: AkayaTelivigala(color: Colors.white, size: 16)
            ),
          ),
          TextButton.icon(
            onPressed: isStaff? null: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HPStaffs()),
              );
            },
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            style: isStaff? TextButton.styleFrom(backgroundColor: Colors.yellow.shade800) : null,
            label: const Text(
                "Staff",
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
            style: isAboutUs? TextButton.styleFrom(backgroundColor: Colors.yellow.shade800) : null,
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
