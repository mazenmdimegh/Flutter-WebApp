import 'package:clicker_project/custom%20widgets/nav_bar.dart';
import 'package:flutter/material.dart';

import 'content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          // color: Colors.amber,
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
  
          child: Column(
            children: const [
              NavBar(),
              Content(),
            ],
          ),
        )
      ],
    ));
  }
}
