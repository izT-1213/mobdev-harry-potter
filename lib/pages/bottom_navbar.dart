import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';

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

  void navigateToStaffs(BuildContext context){
    Navigator.pushNamedAndRemoveUntil(context, '/hpstaffs', (route) => false);
  }

  void navigateToStudents(BuildContext context){
    Navigator.pushNamedAndRemoveUntil(context, '/hpstudents', (route) => false);
  }

  void navigateToAboutUs(BuildContext context){
    Navigator.pushNamedAndRemoveUntil(context, '/aboutus', (route) => false);
  }

  void navigateToHomePage(BuildContext context){
    Navigator.pushNamedAndRemoveUntil(context, '/homepage', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.brown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width/4,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: isHome? Colors.yellow.shade800 : Colors.brown,),
            child: TextButton.icon(
              onPressed: isHome? null: () {
                navigateToHomePage(context);
              },
              icon: Column(
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text("Home", style: AkayaTelivigala(color: Colors.white, size: 16))
                ],
              ),
              style: isHome? TextButton.styleFrom(
                  backgroundColor: Colors.yellow.shade800) : null,
              label: const Text(''),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/4,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: isStudent? Colors.yellow.shade800 : Colors.brown,),
            child: TextButton.icon(
              onPressed: isStudent? null: () {
                navigateToStudents(context);
              },
              label: const Text(''),
              icon: Column(children: const [
                Icon(
                Icons.school,
                color: Colors.white,
                ),
                Text("Students", style: AkayaTelivigala(color: Colors.white, size: 16))
              ],
            )),
          ),
          Container(
            width: MediaQuery.of(context).size.width/4,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: isStaff? Colors.yellow.shade800 : Colors.brown,),
            child: TextButton.icon(
              onPressed: isStaff? null: () {
                navigateToStaffs(context);
              },
              icon: Column(
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  Text("Staffs", style: AkayaTelivigala(color: Colors.white, size: 16))
                ],
              ),
              label: const Text(""),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/4,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: isAboutUs? Colors.yellow.shade800 : Colors.brown,),
            child: TextButton.icon(
              onPressed: isAboutUs? null: () {
                navigateToAboutUs(context);
              },
              icon: Column(
                children: const [
                  Icon(Icons.info_outline, color: Colors.white),
                  Text("About Us", style: AkayaTelivigala(color: Colors.white, size: 16))
                ],
              ),
              label: const Text(''),
            ),
          ),
        ],
      ),
    );
  }
}
