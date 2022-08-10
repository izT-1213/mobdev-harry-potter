import 'package:flutter/material.dart';

import '../fonts/akaya_teliviga.dart';
import 'bottom_navbar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text("smthg smthg yadda yadda bla bla bla",
                style: AkayaTelivigala(color: Colors.red, size: 23,),),
            ),
            const SizedBox(
              height: 50,
            ), //Just for space between two rows
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
                          style: AkayaTelivigala(color: Colors.red, size: 28,),
                        ),
                        Text('Our favourite streamerrrrrrrrr xD',
                          style: AkayaTelivigala(color: Colors.black, size: 18,),),
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
                          style: AkayaTelivigala(color: Colors.red, size: 28,),
                        ),
                        Text('Yes, this is his real face.',
                            style: AkayaTelivigala(color: Colors.black, size: 18,)),
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
                          style: AkayaTelivigala(color: Colors.red, size: 28,),
                        ),
                        Text("He's kinda cringe, ngl.",
                            style: AkayaTelivigala(color: Colors.black, size: 18,)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(
        isHome: false,
        isAboutUs: true,
      ),
    );
  }
}
