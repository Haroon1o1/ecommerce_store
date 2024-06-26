import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cart_screen extends StatelessWidget {
  const cart_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            title: Text('Cart',
                style: GoogleFonts.outfit(
                  fontSize: 18,
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.menu,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0xFFEDECFF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: Column(
                      children: [
                        items(
                          'Watch1',
                          '\$62',
                          'assets/images/watch.png',
                        ),
                        items(
                          'Bag 111',
                          '\$99',
                          'assets/images/bag2.png',
                        ),
                        items(
                          'Sandal',
                          '\$87',
                          'assets/images/sandal.png',
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(CupertinoIcons.add_circled_solid,
                                color: Color(0xFF8E8BFF)),
                            SizedBox(width: 5),
                            Text('Add new Item',
                                style: GoogleFonts.outfit(
                                    fontSize: 18,
                                    color: Color(0xFF8E8BFF),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 25),
                        Container(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total',
                                      style: GoogleFonts.outfit(
                                          fontSize: 20,
                                          color: Color(0xFF8E8BFF),
                                          fontWeight: FontWeight.bold)),
                                  Text('\$211',
                                      style: GoogleFonts.outfit(
                                          fontSize: 20,
                                          color: Color(0xFF8E8BFF),
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 15),
                              Container(
                                alignment: Alignment.center,
                                child: Text('Check out',
                                    style: GoogleFonts.outfit(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFF8E8BFF),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
    
  }

  Widget items(String name, String price, String image) {
    return Container(
      height: 90,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.radio_button_checked,
            color: Color(0xFF8E8BFF),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset('$image', height: 60, width: 60),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$name',
                  style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: Color(0xFF8E8BFF),
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('$price',
                  style: GoogleFonts.outfit(
                      fontSize: 16,
                      color: Color(0xFF8E8BFF),
                      fontWeight: FontWeight.bold)),
              //
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete, color: Colors.red),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                        color: Color(0xFF8E8BFF), shape: BoxShape.circle),
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
                        color: Color(0xFF8E8BFF), shape: BoxShape.circle),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
