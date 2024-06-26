import 'package:ecommerce_store/cart_screen.dart';
import 'package:ecommerce_store/collection.dart';
import 'package:ecommerce_store/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  List<String> name = [
    'Ladies Bag',
    'Painter',
    'Sandal',
    'Watch',
    'Bag',
    'Shoes'
  ];
  List<String> des = [
    'This bag is very good, you know if you our brand',
    'This bag is very good, you know if you our brand',
    'This bag is very good, you know if you our brand',
    'This bag is very good, you know if you our brand',
    'This bag is very good, you know if you our brand',
    'This bag is very good, you know if you our brand'
  ];

  List<String> img = [
    'assets/images/bag.png',
    'assets/images/watch2.png',
    'assets/images/sandal.png',
    'assets/images/watch.png',
    'assets/images/bag2.png',
    'assets/images/shoe.png',
  ];

  List<String> dis = [
    '40',
    '40',
    '40',
    '40',
    '40',
    '40',
  ];

  List<String> price = [
    '66',
    '66',
    '66',
    '66',
    '66',
    '66',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,

      ///// -----------APP BAR OF THE HOME PAGE ----------------//////

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu_rounded,
          size: 30,
        ),
        title: Text('My Ecommerce',
            style: GoogleFonts.outfit(
              fontSize: 15,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cart_screen()));
              },
              icon: Icon(Icons.shopping_cart_rounded),
            ),
          )
        ],
      ),

      ///// -----------BODY OF THE HOME PAGE ----------------//////

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 6; i++)
                        collection(image: img[i], name: name[i]),
                    ],
                  )),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: size.width,
                height: 600,
                decoration: BoxDecoration(
                  color: Color(0xFFEDECFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 20),
                          height: 40,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30,
                                width: 200,
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  decoration: InputDecoration(
                                      hintText: 'Search here ...',
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              Icon(
                                Icons.camera_alt,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Collections',
                            style: GoogleFonts.outfit(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          direction: Axis.horizontal,
                          children: [
                            for (int i = 0; i < 6; i++)
                              product_widget(
                                name: name[i],
                                image: img[i],
                                description: des[i],
                                price: price[i],
                                discount: dis[i],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(
                            top: 15, left: 15, right: 15, bottom: 30),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset('assets/images/watch2.png',
                                  width: 140, height: 140),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Watch 23jG',
                                      style: GoogleFonts.outfit(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text('Sale 60% off',
                                      style: GoogleFonts.outfit(
                                          color: Color(0xFF8E8BFF),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8E8BFF),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text('Add to cart',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
