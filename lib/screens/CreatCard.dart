import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreatCard extends StatefulWidget {
  @override
  _CreatCardState createState() => _CreatCardState();
}

class _CreatCardState extends State<CreatCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Add Payment',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2)),
          centerTitle: true,
          elevation: 0),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SvgPicture.asset('assets/svg/card.svg',
                    semanticsLabel: 'mastercard Logo'),

                SvgPicture.asset('assets/svg/paypal.svg',
                    semanticsLabel: 'mastercard Logo')
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Number',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'EXPIRE DATE',
                  ),
                )),
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CVV',
                  ),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CARDHOLDER NAME',
                ),
              ),
            ),
            Container(
              height: 50.0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(13),
                    ),
                    gradient: LinearGradient(
                      // TODO: change color
                        colors:[Color(0xFFFF4E50), Color(0xFFFC00FF)],
                        stops: [0.1, 0.9],
                        transform: GradientRotation(45)),
                    boxShadow: [
                      BoxShadow(
                        // TODO: change color
                        color: Color(0xFFFE23B1),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(1, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
