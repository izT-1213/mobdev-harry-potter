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

class _MyHomePageState extends State<MyHomePage>
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

          title: Text(
        'Harry Potter Almanac',
        style: TextStyle(
            color: Colors.black,
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
            Text(
              'Welcome to Harry Potter Wizardly App',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontFamily: 'AkayaTelivigala'),
            ),
            const SizedBox(
              width: 20.0,
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Harry Potter, is a series of seven fantasy novels written by British author J.K. Rowling. These series are basically about a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasly, all of whom are students at a wizard school, Hogwarts School of Witchcraft & Wizardy.',
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
                    'Hogwarts School of Witchcraft & Wizardy is divided into four houses, Gryffindor House, Hufflepuff House, Ravenclaw House, & Slytherin House. Each house has their own system, lives, & learning system that all the students adapt to. Explore each house to know better of the students below.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'AkayaTelivigala'),
                  ),

                  const SizedBox(
                    width: 60.0,
                    height: 60.0,
                  ),
                  Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 350),
                            child: FadeTransition(
                              opacity: _animationController,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/gryffindor.png')),
                            )),
                      ],
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
                              MaterialPageRoute(builder: (context) => HPHouseDetails(house: 'gryffindor'))
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.brown,
                          ),
                          child: const Text('Visit Gryffindor',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                        ),
                      ],
                    ),
                  ]),
                  const SizedBox(
                    width: 60.0,
                    height: 60.0,
                  ),

                  Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 200),
                            child: FadeTransition(
                              opacity: _animationController,
                              child: const Image(
                                  image: AssetImage(
                                      'assets/images/slytherin.png')),
                            )),
                      ],
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
                                MaterialPageRoute(builder: (context) => HPHouseDetails(house: 'slytherin'))
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.brown,
                          ),
                          child: const Text('Visit Slytherin',
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                        ),
                      ],
                    ),
                  ]),
                  const SizedBox(
                    width: 60.0,
                    height: 60.0,
                  ),
                  Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 255),
                            child: FadeTransition(
                              opacity: _animationController,
                              child: const Image(
                                  image: AssetImage(
                                      'assets/images/hufflepuff.png')),
                            )),
                      ],
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
                                MaterialPageRoute(builder: (context) => HPHouseDetails(house: 'hufflepuff'))
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.brown,
                          ),
                          child: const Text('Visit Hufflepuff',
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                        ),
                      ],
                    ),
                  ]),
                  const SizedBox(
                    width: 60.0,
                    height: 60.0,
                  ),
                  Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 255),
                          // child: FadeTransition(opacity: _animationController,
                          child: const Image(
                              image: AssetImage('assets/images/ravenclaw.png')),
                          // )
                        ),
                      ],
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
                                MaterialPageRoute(builder: (context) => HPHouseDetails(house: 'ravenclaw'))
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.brown,
                          ),
                          child: const Text('Visit Ravenclaw',
                            style: TextStyle(
                              color: Colors.white,
                        )))
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
