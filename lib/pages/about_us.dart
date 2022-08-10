import 'package:flutter/material.dart';

import '../fonts/akaya_teliviga.dart';
import 'bottom_navbar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String story =
        "T'was a cold and rainy night when three delinquents are lost in the woods, having dared defy their masters and brave the Forest.  \n\n"
        "They were taking shelter beneath a tree when a howl suddenly rang out behind them. The trio turned quickly to glimpse a pack of werewolves nearby and a masked horseman riding close beside. An order was given, and the wolves gave chase. Terrified, they ran aimlessly away from their pursuers, fear and adrenaline both willing them to hasten their steps. Still, alas, they could not outrun the inevitable.   \n\n"
        "The attackers encircled the helpless trio and presented them as captives before their master, Lord Voldemort, to whom he saw befitting that the three served the rest of their miserable lives developing and maintaining a mobile app to promote and magnify the greatness of Hogwarts to the rest of the world. \n\n"
        "And the trio are:";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: AkayaTelivigala(
              color: Colors.white, size: 25, fontWeight: FontWeight.bold),
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
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                story,
                style: AkayaTelivigala(
                  color: Colors.black,
                  size: 23,
                ),
                textAlign: TextAlign.justify,
              ),
              const Divider(
                color: Colors.black,
                height: 30,
                thickness: 3,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/rn_tea.jpeg',
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Nurul Izzati',
                            style: AkayaTelivigala(
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                          Text(
                            'Our favourite streamerrrrrrrrr xD',
                            style: AkayaTelivigala(
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/jazli.jpeg',
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Jazli',
                            style: AkayaTelivigala(
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                          Text('Yes, this is his real face.',
                              style: AkayaTelivigala(
                                color: Colors.black,
                                size: 18,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/waifu.jpeg',
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Isaiah Tan',
                            style: AkayaTelivigala(
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                          Text("He's kinda cringe, ngl.",
                              style: AkayaTelivigala(
                                color: Colors.black,
                                size: 18,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(
        isHome: false,
        isAboutUs: true,
      ),
    );
  }
}
