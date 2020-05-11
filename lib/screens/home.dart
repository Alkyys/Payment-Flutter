import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have to pay my friend',
              style: TextStyle(fontSize: 28, letterSpacing: 2)),
          SizedBox(height: 12),
          OutlineButton.icon(
            highlightColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            icon: const Icon(Icons.payment, size: 18),
            label: Text('Pay'),
            onPressed: () {
              Navigator.pushNamed(context, '/choose_card');
            },
          )
        ],
      ),
    ),
    );
  }
}
