import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('end'),
          elevation: 0),
      body: SafeArea(
          child: Center(
            child: Text('Done'),
          )
      ),
    );
  }
}
