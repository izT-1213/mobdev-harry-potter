import 'package:flutter/material.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';

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
        title: Text('Harry Potter App'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Text(
                'Welcome to Harry Potter wizardly app',
                style: TextStyle(color: Colors.red, fontSize: 23.0, fontFamily: 'Akaya Telivigala'),
              ),
            ]),
      ),
    );
  }
}