import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/bottom_navbar.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hp_details.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hphouse_details.dart';

class MySummary extends StatefulWidget {
  const MySummary({Key? key}) : super(key: key);

  @override
  State<MySummary> createState() => _MySummaryState();
}

class _MySummaryState extends State<MySummary>
    with SingleTickerProviderStateMixin {
  final items = ['House 1' 'House 2' 'House 3' 'House 4'];
  late AnimationController _animationController;

  String? value;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _animationController.forward(from: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: const Text(
            'Harry Potter Almanac',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'AkayaTelivigala'),
          )),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              width: 20.0,
              height: 30.0,
            ),
            const Text(
              'Gryffindor House',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontFamily: 'AkayaTelivigala'),
            ),

            const SizedBox(
              width: 20.0,
              height: 20.0,
            ),

            SizedBox(
              child: Image(image: AssetImage('assets/images/gryff_owner.png')
              ),
            ),

            const SizedBox(
              width: 5.0,
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Godric Gryffindor(founder)',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'AkayaTelivigala'),
                  ),

                  const SizedBox(
                    width: 50.0,
                    height: 50.0,
                  ),

                  Text(
                        'House Summary',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'AkayaTelivigala'),
                  ),

                  const SizedBox(
                    width: 20.0,
                    height: 20.0,
                  ),

                  Text(
                    'Gryffindor valued bravery, daring, nerve, and chivalry. Its emblematic animal was the lion, and its colours were scarlet and gold. Minerva McGonagall was the most recent. Head of Gryffindor. Nicholas de Mimsy-Porpington, also known as "Nearly Headless Nick", was the House Ghost. The founder of the House was, Godric Gryffindor. Gryffindor corresponded to the element of Fire. The common room was located in one of the highest towers at Hogwarts, the entrance was situated on the seventh floor in the east wing of the castle and was guarded by a portrait of The Fat Lady. She permitted entrance if given the correct password, which was changed numerous times throughout the school year. Famous Gryffindors included albus Dumbledore, Harry Potter, and Minerva McGonagall.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'AkayaTelivigala'),
                  ),




                ],
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Navbar(
        isHome: true,
      ),
    );
  }
}
