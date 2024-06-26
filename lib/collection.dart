import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class collection extends StatelessWidget {
  String image, name;
  collection({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: SizedBox(
        child: Container(
          margin: EdgeInsets.only(left:0),
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 240, 255),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('$image', width: 40, height: 40, fit: BoxFit.contain),
                Text('$name',
                    style:
                        GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xFF8E8BFF)))
              ],
            )),
      ),
    );
  }
}
