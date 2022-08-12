import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/fonts/akaya_teliviga.dart';

class MySummary extends StatelessWidget {
  final String house;
  final String name;
  final String image;
  final String summary;
  final String goodTraits;
  final String badTraits;
  MySummary({required this.house, Key? key, required this.name, required this.image, required this.summary, required this.goodTraits, required this.badTraits}) : super(key: key);

  Size size = WidgetsBinding.instance.window.physicalSize;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Harry Potter Almanac',
        style: AkayaTelivigala(
          color: Colors.white,
          size: 25.0,
          fontWeight: FontWeight.bold,
        ),
      )),
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
              height: 30.0,
            ),
            Text(
              '${house[0].toUpperCase()}${house.substring(1, house.length)} House',
              style: AkayaTelivigala(
                color: Colors.brown.shade900,
                size: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              width: 20.0,
              height: 20.0,
            ),
            SizedBox(
              child: Image(image: AssetImage('assets/images/${house}_owner.png')),
            ),
            const SizedBox(
              width: 20.0,
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(name,
                    style: AkayaTelivigala(
                      color: Colors.brown.shade900,
                      size: 25.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'House Summary',
                    style: AkayaTelivigala(
                        color: Colors.brown.shade900, size: 20.0),
                  ),
                  const SizedBox(
                    width: 5.0,
                    height: 5.0,
                  ),
                  Text(
                    summary,
                    textAlign: TextAlign.justify,
                    style: AkayaTelivigala(
                      color: Colors.brown.shade900,
                      size: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child:Row(
                    children: [
                      SizedBox(
                        width: 120,
                        child: Text("${house[0].toUpperCase()}${house.substring(1, house.length)}'s Good Traits",
                            style: AkayaTelivigala(
                              size: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown.shade900,
                            )
                        ),
                      ),
                      Icon(Icons.double_arrow, size: 16, color: Colors.brown.shade900,),
                      const SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width-181,
                      child: Text(goodTraits,
                        style: AkayaTelivigala(
                          size: 23,
                          color: Colors.brown.shade900,
                        )
                    ),
                    ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child:Row(
                    children: [
                      SizedBox(
                        width: 120,
                        child: Text("${house[0].toUpperCase()}${house.substring(1, house.length)}'s Bad Traits",
                            style: AkayaTelivigala(
                              size: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown.shade900,
                            )
                        ),
                      ),
                      Icon(Icons.double_arrow, size: 16, color: Colors.brown.shade900,),
                      const SizedBox(width: 5),
                      SizedBox(
                        width: MediaQuery.of(context).size.width-181,
                        child: Text(badTraits,
                            style: AkayaTelivigala(
                              size: 23,
                              color: Colors.brown.shade900,
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]
          ),
        ),
      ),
    );
  }
}
