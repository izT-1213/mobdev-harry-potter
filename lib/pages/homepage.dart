import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/bottom_navbar.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hp_details.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hphouse_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = ['House 1' 'House 2' 'House 3' 'House 4'];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Harry Potter Almanac'),
      ),
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
            const Text('Welcome to Harry Potter Wizardly App',
                style: AkayaTelivigala(
                  color: Colors.red,
                  size: 23,
                )),
            const SizedBox(
              width: 20.0,
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'Get to know to your favourite Harry Potter characters here in our app. See below & choose your favourite Harry Potter houses! ',
                    style: AkayaTelivigala(
                      color: Colors.red,
                      size: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 60.0,
                    height: 60.0,
                  ),
                  Wrap(children: [
                    const Image(
                      image: NetworkImage(
                          'https://1000logos.net/wp-content/uploads/2021/11/Gryffindor-Logo.png'),
                    ),
                    const SizedBox(
                      width: 20.0,
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HPHouseDetails(
                                          house: 'gryffindor',
                                        )));
                          },
                          child: const Text('Visit Gryffindor'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 60.0,
                      height: 60.0,
                    ),
                    const Image(
                      image: NetworkImage(
                          'https://www.logolynx.com/images/logolynx/53/5390e974544de6279c4d9cb6253e3a2c.jpeg'),
                    ),
                    const SizedBox(
                      width: 20.0,
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HPHouseDetails(
                                          house: 'slytherin',
                                        )));
                          },
                          child: const Text('Visit Slytherin'),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Navbar(
        isHome: true,
        isAboutUs: false,
      ),
    );
  }
}
