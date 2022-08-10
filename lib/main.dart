import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_mobdev_hackathon/states/harrypotter_cubit.dart';

import 'pages/homepage.dart';

void main() {
  runApp(
      BlocProvider(
        create: (context) => HarryPotterCubit(),
        child: MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harry Potter Almanac',
      theme: ThemeData(
        canvasColor: Colors.yellow,
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}
