import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/pages/bottom_navbar.dart';
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

  void navigateToHouse(BuildContext context, String house){
    Navigator.pushNamed(context, '/hphouse', arguments: house);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Harry Potter Almanac',
          style: AkayaTelivigala(
            color: Colors.white,
            size: 25.0,),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
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
              textAlign: TextAlign.center,
              style: AkayaTelivigala(
                  color: Colors.brown.shade900,
                  size: 30.0,
                  fontWeight: FontWeight.bold,),
            ),

            const SizedBox(
              width: 20.0,
              height: 20.0,
            ),

            const SizedBox(
              child: Image(image: AssetImage('assets/images/harry_potter.png')),
            ),

            const SizedBox(
              height: 5.0,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Harry Potter, is a series of seven fantasy novels written by J.K. Rowling. These series are basically about the lives of a young wizard, Harry Potter and his friends, Hermione Granger & Ron Weasley, all of whom are the students of Hogwarts School of Witchcraft & Wizardry.',
                    textAlign: TextAlign.justify,
                    style: AkayaTelivigala(
                        color: Colors.brown.shade900,
                        size: 18.0,
                        ),
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),

                  Text(
                    'Meanwhile, Hogwarts School of Witchcraft & Wizardry is divided into four main houses. The houses are Gryffindor House, Slytherin House, Hufflepuff House, & Ravenclaw House. Each house has their own students, study system & community.',
                    textAlign: TextAlign.justify,
                    style: AkayaTelivigala(
                        color: Colors.brown.shade900,
                        size: 18.0,
                        ),
                  ),

                  const SizedBox(
                    height: 25.0,
                  ),

                  Text('Explore each house below.',
                  textAlign: TextAlign.center,
                  style: AkayaTelivigala(
                    color: Colors.brown.shade900,
                    size: 28,
                  ),),

                  const SizedBox(
                    height: 25,
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

                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  navigateToHouse(context, 'gryffindor');
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.brown,
                                    elevation: 3,
                                    minimumSize: const Size(18,35)
                                ),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 123,
                                      child:Text('Visit Gryffindor',
                                        style: AkayaTelivigala(
                                        color: Colors.white,
                                        size: 16,
                                    ),),),
                                    SizedBox(width: 5),
                                    Icon(Icons.double_arrow, size: 16),
                                  ]
                              )),

                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const MySummary())
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.brown,
                                  elevation: 3,
                                  minimumSize: const Size(18,35)
                                ),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 123,
                                      child: Text('More of Gryffindor',
                                      textAlign: TextAlign.center,
                                      style: AkayaTelivigala(
                                        color: Colors.white,
                                        size: 16,
                                    ))),
                                    SizedBox(width: 5),
                                    Icon(Icons.double_arrow, size: 16),
                                  ],
                              ),
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
                                  navigateToHouse(context, 'slytherin');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.brown,
                                  elevation: 3,
                                  minimumSize: const Size(18,35)),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 123,
                                        child:Text('Visit Slytherin',
                                          style: AkayaTelivigala(
                                            color: Colors.white,
                                            size: 16
                                        ))),
                                    SizedBox(width: 5),
                                    Icon(Icons.double_arrow, size: 16),
                                  ]),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HPHouseDetails(house: 'slytherin'))
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.brown,
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                child: Row(
                                  children: const[
                                    SizedBox(
                                      width: 123,
                                        child: Text('More of Slytherin',
                                          style: AkayaTelivigala(
                                          color: Colors.white,
                                          size: 16
                                  ))),
                                    SizedBox(width: 5),
                                    Icon(Icons.double_arrow, size: 16),
                                  ]
                                ),
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
                                  navigateToHouse(context, 'hufflepuff');
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.brown,
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                child: Row(
                                    children: const[
                                      SizedBox(
                                          width: 123,
                                          child: Text('Visit Hufflepuff',
                                              style: AkayaTelivigala(
                                                  color: Colors.white,
                                                  size: 16
                                              ))),
                                      SizedBox(width: 5),
                                      Icon(Icons.double_arrow, size: 16),
                                    ]
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HPHouseDetails(house: 'hufflepuff'))
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.brown,
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                  child: Row(
                                      children: const[
                                        SizedBox(
                                            width: 123,
                                            child: Text('More of Hufflepuff',
                                                style: AkayaTelivigala(
                                                    color: Colors.white,
                                                    size: 16
                                                ))),
                                        SizedBox(width: 5),
                                        Icon(Icons.double_arrow, size: 16),
                                      ]
                                  ),
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
                                  navigateToHouse(context, 'ravenclaw');
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.brown,
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                child: Row(
                                    children: const[
                                      SizedBox(
                                          width: 123,
                                          child: Text('Visit Ravenclaw',
                                              style: AkayaTelivigala(
                                                  color: Colors.white,
                                                  size: 16
                                              ))),
                                      SizedBox(width: 5),
                                      Icon(Icons.double_arrow, size: 16),
                                    ]
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HPHouseDetails(house: 'ravenclaw'))
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.brown,
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                  child: Row(
                                      children: const[
                                        SizedBox(
                                            width: 123,
                                            child: Text('More of Ravenclaw',
                                                style: AkayaTelivigala(
                                                    color: Colors.white,
                                                    size: 16
                                                ))),
                                        SizedBox(width: 5),
                                        Icon(Icons.double_arrow, size: 16),
                                      ]
                                  ),
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
