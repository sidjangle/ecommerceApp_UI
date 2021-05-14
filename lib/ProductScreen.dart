import 'package:flutter/material.dart';

import 'Homescreen.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int currentpage = 0;
  List<Map<String, String>> sildedata = [
    {"img": 'assets/watch 1.png'},
    {"img": 'assets/watch 1.png'},
    {"img": 'assets/watch 1.png'},
  ];

  List color = [
    {'colors': Color(0xff3f3f44)},
    {'colors': Color(0xff7fbfff)},
    {'colors': Color(0xff52ed9f)},
    {'colors': Color(0xff1dc8cc)},
    {'colors': Color(0xfff57200)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1dc8cc),
      body: Column(
        children: [
          AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          ),
          Expanded(
              child: PageView.builder(
                  itemCount: sildedata.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.asset(
                        sildedata[index]['img'],
                        fit: BoxFit.contain,
                      ),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  sildedata.length, (index) => builddSideDot(index: index)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Apple Watch 5',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.favorite,
                        color: Color(0xfff26d6d),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Rs 34,000',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow[700],
                      ),
                      Text('4.6')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You're looking at the Apple Watch Series 5 GPS. This ultra-light smart watch sits comfortably on your wrist.The band of this lightweight smart watch is made using high-quality material.Its rectangular dial is made using 7000 series aerospace-grade aluminium material.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Colors',
                      ),
                    ],
                  ),
                  Row(
                      children: List.generate(
                    color.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: color[index]['colors'],
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              color: Color(0xffc3f0f1),
                              padding: EdgeInsets.all(15),
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(color: Color(0xff1dc8cc)),
                              ),
                              onPressed: () {})),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                              color: Color(0xff1dc8cc),
                              padding: EdgeInsets.all(15),
                              child: Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {}))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container builddSideDot({int index}) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      height: 10,
      width: currentpage == index ? 18 : 10,
      decoration: BoxDecoration(
          color: currentpage == index ? Colors.white : Colors.grey,
          borderRadius: BorderRadius.circular(40)),
    );
  }
}
