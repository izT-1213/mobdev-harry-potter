import 'package:flutter/material.dart';

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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text("smthg smthg yadda yadda bla bla bla"),
          ),
          const SizedBox(
            height: 100,
          ), //Just for space between two rows
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle, size: 32),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name 1',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const Text('Information here'),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle, size: 32),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name 2',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const Text('Extra info here'),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle, size: 32),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name 3',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const Text('Extra here'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
