import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hp_details.dart';

import 'bottom_navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
