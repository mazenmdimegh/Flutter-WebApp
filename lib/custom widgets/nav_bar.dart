import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            width: 120,
            child: Image.asset('lib/assets/images/argon-white.png'),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),

              // ignore: prefer_const_literals_to_create_immutables
              child: Row(
                children: const [_NavBarItem("Stage")],
              )),
          const _NavBarItem("Alternance"),
          const SizedBox(
            width: 40,
          ),
          const _NavBarItem("Freelance"),
          const SizedBox(
            width: 40,
          ),
          const _NavBarItem("Entreprise"),
          const SizedBox(
            width: 40,
          ),
          const _NavBarItem("Blog"),
          const SizedBox(
            width: 200,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              // ignore: prefer_const_literals_to_create_immutables
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 29.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ],
              )),
          const _NavBarItem("Login"),
          const SizedBox(
            width: 50,
          ),
          // Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255),
              onPrimary: Color.fromARGB(255, 0, 153, 241),
              minimumSize: Size(100, 50),
            ),
            child: Text("Signup".toUpperCase()),
            onPressed: () => print("short Press"),
            onLongPress: () => print("long Press"),
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 17,
        color: Colors.white,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
