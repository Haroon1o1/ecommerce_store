import 'package:ecommerce_store/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class product_detail_screen extends StatefulWidget {
  product_detail_screen({super.key});

  @override
  State<product_detail_screen> createState() => _product_detail_screenState();
}

class _product_detail_screenState extends State<product_detail_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        // AppBar --------- OF product detail page
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            title: Text('Product Details',
                style: GoogleFonts.outfit(
                  fontSize: 18,
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.favorite_border_outlined,
                    color: Color.fromARGB(255, 248, 114, 114)),
              )
            ],
          ),



          // ----------------Body -------------------
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/shoe.png', height: 200),
                    height: 290,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 214, 212, 255),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Product Details',
                            style: GoogleFonts.outfit(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        SizedBox(height: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(Icons.star),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.add),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF8E8BFF),
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('01', style: TextStyle(fontSize: 15)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Icon(CupertinoIcons.minus),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF8E8BFF),
                                        shape: BoxShape.circle),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                            'This is a shoe, if you wear this you will become a super-man. and then you can run faster then flash . check this now :)'),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Size',
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 60,
                              child: Text('Small',
                                  style: GoogleFonts.nunito(
                                      color: Colors.white, fontSize: 12)),
                              decoration: BoxDecoration(
                                  color: Color(0xFF8E8BFF),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 80,
                              child: Text('Medium',
                                  style: GoogleFonts.nunito(fontSize: 12)),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 214, 212, 255),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 60,
                              child: Text('Large',
                                  style: GoogleFonts.nunito(fontSize: 12)),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 214, 212, 255),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Text('Xl',
                                  style: GoogleFonts.nunito(fontSize: 12)),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 214, 212, 255),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Text('Colors',
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Text('.',
                                  style: GoogleFonts.nunito(
                                      color: Colors.red, fontSize: 16)),
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Text('.',
                                  style: GoogleFonts.nunito(
                                      color: Colors.blue, fontSize: 16)),
                              decoration: BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Text('.',
                                  style: GoogleFonts.nunito(
                                      color: Colors.green, fontSize: 16)),
                              decoration: BoxDecoration(
                                  color: Colors.green, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Text('.',
                                  style: GoogleFonts.nunito(
                                      color: Colors.yellow, fontSize: 16)),
                              decoration: BoxDecoration(
                                  color: Colors.yellow, shape: BoxShape.circle),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$66',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF8E8BFF))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => cart_screen(),));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFF8E8BFF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Add to cart',
                               
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 234, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
