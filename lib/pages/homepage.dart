import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';
import 'package:harry_potter_mobdev_hackathon/pages/bottom_navbar.dart';
import 'package:harry_potter_mobdev_hackathon/pages/house_summary.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  String? value;
  Size size = WidgetsBinding.instance.window.physicalSize;

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
            Column(
              children: [
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
                      ),),]
                  ),
                ),
                  Container(
                    constraints: BoxConstraints.tightForFinite(width: size.width),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/gryffindor_bg.png"),
                            fit: BoxFit.cover)),
                    padding: const EdgeInsets.all(20),
                    child: Wrap(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: NetworkImage('https://i.ibb.co/2vrphnd/Gryffindor.png')),
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
                                    primary: const Color(0xffb740001),
                                    elevation: 3,
                                    minimumSize: const Size(18,35)
                                ),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 123,
                                      child:Text('Members',
                                        style: AkayaTelivigala(
                                        color: Colors.white,
                                        size: 16,
                                    ),),),
                                    SizedBox(width: 5),
                                    Icon(Icons.double_arrow, size: 16),
                                  ]
                              )
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MySummary(house: 'gryffindor',
                                          name: 'Godric Gryffindor',
                                          image: 'assets/images/gryff_owner.png',
                                          summary:
                                          'Gryffindor was one of the four Houses of Hogwarts School of Witchcraft and Wizardry and was founded by Godric Gryffindor. Gryffindor instructed the Sorting Hat to choose students possessing characteristics he most valued, such as courage, chivalry, nerve and determination, to be sorted into his house. The emblematic animal was a lion, and its colours were scarlet and gold. Sir Nicholas de Mimsy-Porpington, also known as "Nearly Headless Nick", was the House ghost. Gryffindor corresponded roughly to the element of fire, and it was for this reason that the colours scarlet and gold were chosen to represent the house. The colour of fire corresponded to that of a lion as well, with scarlet representing the mane and tail and gold representing the coat.',
                                          goodTraits:
                                          'Brave, Chivalrous, Noble, Competitive, Daring, Adventurous, Willing to Stand Up for Others',
                                          badTraits: 'Impulsive, Stubborn, Hot-headed, Arrogant, Reckless'))
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffb740001),
                                  elevation: 3,
                                  minimumSize: const Size(18,35)
                                ),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 123,
                                      child: Text('About Gryffindor',
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
                  ]
                  ),
                  ),
                Container(
                  padding: EdgeInsets.all(20),
                  constraints: BoxConstraints.tightForFinite(width: size.width),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/slytherin_bg.png"),
                          fit: BoxFit.cover)),
                  child: Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: NetworkImage('https://i.ibb.co/s5Pd3sb/Slytherin-1.png')),
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
                                  primary: const Color(0xffb1A472A),
                                  elevation: 3,
                                  minimumSize: const Size(18,35)),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 123,
                                        child:Text('Members',
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
                                      MaterialPageRoute(builder: (context) => MySummary(house: 'slytherin',
                                          name: 'Salazar Slytherin',
                                          image: 'assets/images/slytherin_owner.png',
                                          summary:
                                          "Slytherin was one of the four Houses at Hogwarts School of Witchcraft and Wizardry, founded by Salazar Slytherin. In establishing the house, Salazar instructed the Sorting Hat to pick students who had a few particular characteristics he most valued. Those characteristics included cunning, resourcefulness, leadership, and ambition.Many Slytherin students tended to clique together (often acquiring leaders) which further exemplified Slytherin's ambitious qualities. Examples of these included Draco Malfoy's gang, Merula Snyde's gang, Pansy Parkinson's gang and the Death Eaters.The founder highly valued and favoured pure-blood students and the Sorting Hat admitted that it could be a factor when being sorted. Students of any blood status could be placed in the house. However, a Muggle-born student from that house was considered to be quite rare. The emblematic animal of the house was a snake and the house's colours were green and silver. ",
                                          goodTraits: 'Sly, Clever, Ambitious, Prideful, Resourceful, Determined',
                                          badTraits: 'Cunning, Ruthless, Selfish, Entitled, Manipulative'))
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffb1A472A),
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                child: Row(
                                  children: const[
                                    SizedBox(
                                      width: 123,
                                        child: Text('About Slytherin',
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
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  constraints: BoxConstraints.tightForFinite(width: size.width),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/hufflepuff_bg.png"),
                          fit: BoxFit.cover)),
                  child: Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: NetworkImage('https://i.ibb.co/Ybz47gs/Hufflepuff.png')),
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
                                    primary: const Color(0xffbFFDB00),
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                child: Row(
                                    children: const[
                                      SizedBox(
                                          width: 123,
                                          child: Text('Members',
                                              style: AkayaTelivigala(
                                                  color: Colors.black,
                                                  size: 16
                                              ))),
                                      SizedBox(width: 5),
                                      Icon(Icons.double_arrow, size: 16, color: Colors.black,),
                                    ]
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MySummary(house: 'hufflepuff',
                                          name: 'Helga Hufflepuff',
                                          image: 'assets/images/hufflepuff_owner.png',
                                          summary:
                                          "Hufflepuff was one of the four Houses of Hogwarts School of Witchcraft and Wizardry. Its founder was the medieval witch Helga Hufflepuff. Hufflepuff was the most inclusive among the four houses, valuing hard work, dedication, patience, loyalty, and fair play rather than a particular aptitude in its members. The emblematic animal was a badger, and yellow and black were its house colours. The Head of Hufflepuff was Pomona Sprout, and the Fat Friar was the House's patron ghost. Hufflepuff corresponded roughly to the element of earth,and it was for that reason that the House colours were chosen: yellow represented wheat, while black was emblematic of soil. The Hufflepuff point hourglass contained yellow diamonds. Students sorted into Hufflepuff often demonstrated strong abilities in Herbology, owing to their correspondence to earth.",
                                          goodTraits:
                                          'Hard-working, Dedicated, Fair, Patient, Loyal, Kind, Humble, Honest',
                                          badTraits:
                                          'Too Trusting, Absent-minded, Naive, Spineless, Easy Taken Advantage Of'))
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffbFFDB00),
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                  child: Row(
                                      children: const[
                                        SizedBox(
                                            width: 123,
                                            child: Text('About Hufflepuff',
                                                style: AkayaTelivigala(
                                                    color: Colors.black,
                                                    size: 16
                                                ))),
                                        SizedBox(width: 5),
                                        Icon(Icons.double_arrow, size: 16, color: Colors.black,),
                                      ]
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  constraints: BoxConstraints.tightForFinite(width: size.width),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/ravenclaw_bg.png"),
                          fit: BoxFit.cover)),
                  child: Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex:1,
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 1000),
                              child: FadeTransition(
                                opacity: _animationController,
                                child: const Image(
                                    image: NetworkImage('https://i.ibb.co/hsQwRbQ/Ravenclaw.png')),
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
                                    primary: const Color(0xffb222F5B),
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                child: Row(
                                    children: const[
                                      SizedBox(
                                          width: 123,
                                          child: Text('Members',
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
                                      MaterialPageRoute(builder: (context) => MySummary(
                                          house: 'ravenclaw',
                                          name: 'Rowena Ravenclaw',
                                          image: 'assets/images/ravenclaw_owner.png',
                                          summary:
                                          "Ravenclaw was one of the four Houses of Hogwarts School of Witchcraft and Wizardry. Its founder was the medieval witch Rowena Ravenclaw. Members of this house were characterised by their wit, learning, and wisdom. The emblematic animal symbol was an eagle, and blue and bronze were its colours. The Head of Ravenclaw was Filius Flitwick, and the House ghost was the Grey Lady, real name Helena Ravenclaw, daughter of Rowena. Ravenclaw corresponded roughly to the element of air, and it was for that reason that the House colours were chosen; blue and bronze represented the sky and eagle feathers respectively, both having much to do with air. The Ravenclaw points hourglass contained blue sapphires.",
                                          goodTraits: 'Wise, Intelligent, Creative, Clever, Knowledgeable, Quirky',
                                          badTraits: 'Know-it-all, Vain, Standoffish, Dismissive, Overly Proud'))
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffb222F5B),
                                    elevation: 3,
                                    minimumSize: const Size(18,35)),
                                  child: Row(
                                      children: const[
                                        SizedBox(
                                            width: 123,
                                            child: Text('About Ravenclaw',
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
                ),
              ],
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
