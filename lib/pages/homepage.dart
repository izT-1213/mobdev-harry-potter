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
        title: const Text('Harry potter Almanac'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                  AboutUs())
                  );
                },
                child: Text("Test"))
          ],
        ),
      )
    );
  }
}