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
              children: <Widget>[
//                Container(
//                  foregroundDecoration: BoxDecoration(
//                      gradient: LinearGradient(
//                          colors: [Color(0xFFFC00FF), Color(0xFF21D4FD)],
//                          stops: [0.1, 0.9],
//                          transform: GradientRotation(45)),
//                      backgroundBlendMode: BlendMode.screen),
//                  child: IconButton(
//                    icon: Icon(Icons.credit_card),
//                    iconSize: 36,
//                    color: Colors.black,
//                    onPressed: () {},
//                  ),
//                ),
                IconButton(
                  icon: Container(
                    foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFFC00FF), Color(0xFF21D4FD)],
                            begin: Alignment(0, 0),
                            end: Alignment(0, 1),
                            transform: GradientRotation(45)),
                        backgroundBlendMode: BlendMode.screen),
                    child: Icon(Icons.credit_card),
                  ),
                  iconSize: 36,
                  color: Colors.black,
                  onPressed: () {},
                ),
                SvgPicture.asset('assets/svg/paypal.svg',
                    semanticsLabel: 'mastercard Logo')
              ],
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Card Number',
              ),
            ),
            Row(
              children: <Widget>[Text('hgdvhegs'), Text('kjdcjkseb')],
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CARDHOLDER NAME',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
