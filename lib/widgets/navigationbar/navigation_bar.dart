import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 1200,
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: 120,
                child: Image.asset('assets/images/argon-white.png'),
              ),
              _NavBarItem("Stage"),
              SizedBox(
                width: 40,
              ),
              _NavBarItem("Alternance"),
              SizedBox(
                width: 40,
              ),
              _NavBarItem("Freelance"),
              SizedBox(
                width: 40,
              ),
              _NavBarItem("Entreprise"),
              SizedBox(
                width: 40,
              ),
              _NavBarItem("Blog"),
              SizedBox(
                width: 300,
              ),
              _NavBarItem("Login"),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 255, 255),
                  onPrimary: Color.fromARGB(255, 0, 153, 241),
                  minimumSize: Size(100, 50),
                ),
                child: Text("Signup".toUpperCase()),
                onPressed: () => print("short Press"),
                onLongPress: () => print("long Press"),
              )
            ],
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
      style: TextStyle(
        fontSize: 17,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }
}
