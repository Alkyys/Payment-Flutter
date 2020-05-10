import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseCard extends StatefulWidget {
  @override
  _ChooseCardState createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Payment',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          const Radius.circular(13),
                        ),
                        gradient: LinearGradient(
                            colors: [Color(0xFFFF4E50), Color(0xFFFC00FF)],
                            stops: [0.1, 0.9],
                            transform: GradientRotation(45)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFE23B1),
                            spreadRadius: 1,
                            blurRadius: 20,
                            offset: Offset(1, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Bank name',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 50),
                              child: Text('•••• •••• •••• 2296',
                                  style: TextStyle(
                                      color: Colors.white,
                                      wordSpacing: 7,
                                      fontSize: 25)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('John Wick',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17)),
                                SvgPicture.asset('assets/svg/visa.svg',
                                    color: Colors.white,
                                    semanticsLabel: 'visa logo')
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          const Radius.circular(13),
                        ),
                        gradient: LinearGradient(
                            colors: [Color(0xFFFC00FF), Color(0xFF21D4FD)],
                            stops: [0.1, 0.9],
                            transform: GradientRotation(45)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF688EFD),
                            spreadRadius: 1,
                            blurRadius: 20,
                            offset: Offset(1, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Bank name',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 40, 0, 50),
                              child: Text('•••• •••• •••• 2296',
                                  style: TextStyle(
                                      color: Colors.white,
                                      wordSpacing: 7,
                                      fontSize: 25)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('John Wick',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17)),
                                SvgPicture.asset('assets/svg/mastercard.svg',
                                    semanticsLabel: 'mastercard Logo')
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.21),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.black, width: 4)),
                textColor: Colors.black,
                highlightColor: Colors.grey,
                onPressed: () {
                  Navigator.pushNamed(context, '/creat_card');
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 7),
                  child: Text('Add',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
