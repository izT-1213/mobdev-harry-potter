import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_mobdev_hackathon/pages/about_us.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hpstaffs.dart';
import 'package:harry_potter_mobdev_hackathon/pages/hpstudents.dart';
import 'package:harry_potter_mobdev_hackathon/states/harrypotter_cubit.dart';
import 'package:harry_potter_mobdev_hackathon/widgets/house_params.dart';

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
        primarySwatch: Colors.brown,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(Colors.brown[900])
        )
      ),
      home: const MyHomePage(),
      routes: {
        '/hpstaffs': (context) => const HPStaffs(),
        '/hpstudents': (context) => const HPStudents(),
        '/homepage': (context) => const MyHomePage(),
        '/aboutus': (context) => const AboutUs(),
        '/hphouse': (context) => const HouseWithParams(),
      },
    );
  }
}
