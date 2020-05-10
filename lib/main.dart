import 'package:flutter/material.dart';
import 'package:payment/screens/ChooseCard.dart';
import 'package:payment/screens/CreatCard.dart';
import 'package:payment/screens/home.dart';


void main() => runApp(MaterialApp(
  title: 'Payment App',
  theme: ThemeData(fontFamily: 'Gilroy'),
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/choose_card': (context) => ChooseCard(),
    '/creat_card': (context) => CreatCard()
  },
));