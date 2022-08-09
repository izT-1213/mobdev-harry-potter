import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
              onPressed: () {
                // add action here
              },
              child: const Icon(Icons.home, color: Colors.white)),
          TextButton(
              onPressed: () {
                // add action here
              },
              child: const Icon(Icons.info_outline, color: Colors.white)),
        ],
      ),
    );
  }
}
