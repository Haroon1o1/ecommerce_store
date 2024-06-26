import 'package:ecommerce_store/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class product_widget extends StatelessWidget {
  String name, discount, description, price, image;
  product_widget({
    super.key,
    required this.name,
    required this.discount,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 280,
        width: MediaQuery.of(context).size.width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xFF8E8BFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('-$discount%',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                            fontSize: 10, color: Colors.white)),
                  ),
                  Icon(Icons.favorite_outline,
                      color: Color.fromARGB(255, 248, 114, 114)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
                child: Image.asset('$image',
                    width: 100, height: 100, fit: BoxFit.contain)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('$name',
                  style: GoogleFonts.outfit(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8E8BFF))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('$description',
                  maxLines: 2,
                  style: GoogleFonts.outfit(fontSize: 11, color: Colors.grey)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('$price\$',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF8E8BFF))),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => product_detail_screen()));
                    },
                    child: Container(
                      
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFF8E8BFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('buy',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
