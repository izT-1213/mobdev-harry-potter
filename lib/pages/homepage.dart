import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/bottom_navbar.dart';

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
        title: Text('Harry Potter Almanac'),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            width: 20.0,
            height: 30.0,
          ),
          Text(
            'Welcome to Harry Potter Wizardly App',
          title: const Text('Harry Potter App'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text(
            'Welcome to Harry Potter wizardly app',
            style: TextStyle(
                color: Colors.red,
                fontSize: 23.0,
                fontFamily: 'Akaya Telivigala'),
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
                  'Get to know to your favourite Harry Potter characters here in our app. See below & choose your favourite Harry Potter houses! ',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      fontFamily: 'Akaya Telivigala'),
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
                        onPressed: () {},
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
                        onPressed: () {},
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
      bottomNavigationBar: Navbar(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HPDetails()));
              },
              child: const Text("test"))
        ]),
      ),
      bottomNavigationBar: Navbar(isHome: true, isAboutUs: false,),
    );
  }
}
