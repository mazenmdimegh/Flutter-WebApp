import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 219,
              ),
              SizedBox(
                  height: 50,
                  child: Text(
                    '33 199 Stages , Emplois en Alternance et Emplois jeunes à pourvoir',
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        letterSpacing: .5,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 40,
              ),
              Text(
                'Libérez vos potentiel',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 32, 32, 32),
                    fontSize: 30,
                    letterSpacing: .5,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
              width: 400,
              child: TextField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: "Search ...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 3,
                    )),
              ))),
        ]));
  }
}

