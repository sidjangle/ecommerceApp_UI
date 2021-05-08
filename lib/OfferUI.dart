import 'package:flutter/material.dart';

class OfferUIWidget extends StatelessWidget {
  final img;
  Color color;
  OfferUIWidget({this.img, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 170,
        height: 230,
        child: Stack(
          children: [
            Positioned(
              top: 30,
              child: Container(
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: color),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image.asset(
                      img,
                      width: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Apple Watch 6',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rs. 40,000',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
