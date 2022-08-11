import 'package:flutter/material.dart';

import '../fonts/akaya_teliviga.dart';
import 'bottom_navbar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  late ScrollController _scrollController;
  var selectedSlide;
  static const String p1 =
      "T'was a cold and rainy night when three delinquents are lost in the woods, having dared defy their masters and brave the Forest.  \n\n";

  static const String p2 =
      "They were taking shelter beneath a tree when a howl suddenly rang out behind them. The trio turned quickly to glimpse a pack of werewolves nearby and a masked horseman riding close beside. An order was given, and the wolves gave chase. Terrified, they ran aimlessly away from their pursuers, fear and adrenaline both willing them to hasten their steps. Still, alas, they could not outrun the inevitable.   \n\n";

  static const String p3 =
      "The attackers encircled the helpless trio and presented them as captives before their master, Lord Voldemort, to whom he saw befitting that the three served the rest of their miserable lives developing and maintaining a mobile app to promote and magnify the greatness of Hogwarts to the rest of the world. \n\n";

  static const String p4 = "The trio are:";

  static Column p5 = Column(
    children: [
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/rn_tea.jpeg'),
              radius: 50,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nurul Izzati',
                style: AkayaTelivigala(
                  color: Colors.red,
                  size: 36,
                ),
              ),
              Text('Team Lead',
                  textAlign: TextAlign.justify,
                  style: AkayaTelivigala(
                    color: Colors.black,
                    size: 24,
                  )),
            ],
          ),
        ],
      ),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/jazli.jpeg'),
              radius: 50,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Jazli',
                style: AkayaTelivigala(
                  color: Colors.red,
                  size: 36,
                ),
              ),
              Text('Code Logistics',
                  style: AkayaTelivigala(
                    color: Colors.brown.shade900,
                    size: 24,
                  )),
            ],
          ),
        ],
      ),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/waifu.jpeg'),
              radius: 50,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Isaiah Tan',
                style: AkayaTelivigala(
                  color: Colors.red,
                  size: 36,
                ),
              ),
              Text("Freeloader",
                  style: AkayaTelivigala(
                    color: Colors.black,
                    size: 24,
                  )),
            ],
          ),
        ],
      ),
    ],
  );

  imageBox(dynamic entry) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(child: entry["context"])),
          ),
        ],
      ),
    );
  }

  List allSlides = List.from(
    [p1, p2, p3, p4, p5].map(
      (s) => {
        'widget': Widget,
        'selected': false,
        'context': s is Widget
            ? s
            : Text(s.toString(),
                style: const AkayaTelivigala(color: Colors.black, size: 32))
      },
    ),
  );

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeSelector);
    setState(() {
      selectedSlide = allSlides[0];
      selectedSlide['selected'] = true;
    });
  }

  changeSelector() {
    var maxScrollVal = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollVal / allSlides.length) + 20;

    var scrollValue = _scrollController.offset.round();
    var slideValue = (scrollValue / divisor).round();

    // var currentSlide = allSlides.indexWhere((slide) => slide['selected']);

    setState(() {
      // allSlides[currentSlide]['selected'] = false;
      selectedSlide = allSlides[slideValue];
      selectedSlide['selected'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView(
                controller: _scrollController,
                children: allSlides.map((element) {
                  return getCards(element);
                }).toList(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Navbar(
        isAboutUs: true,
      ),
    );
  }

  Widget getCards(slide) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: AnimatedCrossFade(
        firstChild: imageBox(slide),
        duration: Duration(seconds: 1),
        secondChild: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent,
        ),
        crossFadeState: slide['selected']
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
      ),
    );
  }
}
