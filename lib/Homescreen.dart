import 'package:ecommerceapp/OfferUI.dart';
import 'package:ecommerceapp/ProductScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfefe),
      appBar: AppBar(
        leading: Icon(
          Icons.notes,
          size: 35,
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Image.asset('assets/codetodo.png'),
            ),
          )
        ],
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Discover', style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductScreen()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                color: Color(0xfff1763b),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Apple Watch 5',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Rs, 34,000',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 70,
                              left: 40,
                              child: Container(
                                  width: 200,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/watch 1.png',
                                  )))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Color(0xff1ec9cd),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Apple Watch 10',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Rs, 37,000',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 70,
                            left: 40,
                            child: Container(
                                width: 200,
                                height: 200,
                                child: Image.asset(
                                  'assets/watch 2.png',
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Discount Offer
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Discount Offer', style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  OfferUIWidget(
                    color: Color(0xff1dc6ca),
                    img: 'assets/watch 3.png',
                  ),
                  OfferUIWidget(
                    color: Color(0xff1ba5c2),
                    img: 'assets/watch 2.png',
                  ),
                  OfferUIWidget(
                    color: Color(0xff1dcc9d),
                    img: 'assets/watch 1.png',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
