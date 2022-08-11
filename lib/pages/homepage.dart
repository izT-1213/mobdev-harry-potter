import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/bottom_navbar.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hp_details.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hphouse_details.dart';
import 'package:harry_potter_mobdev_hackathon/pages/house_summary.dart';

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

            SizedBox(
              child: Image(image: AssetImage('assets/images/harry_potter.png')
            ),
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
                    'Harry Potter, is a series of seven fantasy novels written by J.K. Rowling. These series are basically about the lives of a young wizard, Harry Potter and his friends, Hermione Granger & Ron Weasley, all of whom are the students of Hogwarts School of Witchcraft & Wizardry.',
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
                    'Meanwhile, Hogwarts School of Witchcraft & Wizardry is divided into four main houses. The houses are Gryffindor House, Slytherin House, Hufflepuff House, & Ravenclaw House. Each house has their own students, study system & community. Explore each house below.',
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
                    ),
                    const SizedBox(
                      width: 20.0,
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/Gryffindor-black.png')),
                              )),
                        ),

                        Expanded(flex: 1,
                          child: Column(
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

                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MySummary())
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.brown,
                                ),
                                child: const Text('More of Gryffindor',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),),
                              ),

                            ],
                          ),
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
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/Slytherin-black.png')),
                              )),
                        ),

                        Expanded(flex: 1,
                          child: Column(
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
                                child: const Text('More of Slytherin',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),),
                              ),

                            ],
                          ),
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
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/Hufflepuff-black.png')),
                              )),
                        ),

                        Expanded(flex: 1,
                          child: Column(
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
                                child: const Text('More of Hufflepuff',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),),
                              ),

                            ],
                          ),
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
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/Ravenclaw-black.png')),
                              )),
                        ),

                        Expanded(flex: 1,
                          child: Column(
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
                                  ),),
                              ),

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
                                child: const Text('More of Ravenclaw',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),),
                              ),

                            ],
                          ),
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
      ),
    );
  }
}
