import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/models/card_model.dart';

class ChooseCard extends StatefulWidget {
  @override
  _ChooseCardState createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  _chooseColor(e) {
    switch (e) {
      case "Societe Generale":
        {
          return [Color(0xFF000000), Color(0xFFea001f)];
        }
        break;

      case "Banque Postale":
        {
          return [Color(0xFF1f3460), Color(0xFFffcc00)];
        }
        break;

      case "CIC":
        {
          return [Color(0xFF001c8f), Color(0xFF008389)];
        }
        break;

      case "BNP Paribas":
        {
          return [Color(0xFF000000), Color(0xFF008e74)];
        }
        break;

      case "HSBC":
        {
          return [Color(0xFFdc0009), Color(0xFFfacdd3)];
        }
        break;

      case "LCL":
        {
          return [Color(0xFF20368b), Color(0xFFffd203)];
        }
        break;

      case "Caisse d’Epargne":
        {
          return [Color(0xFFe3001b), Color(0xFFfacdd3)];
        }
        break;

      case "Crédit Agricole":
        {
          return [Color(0xFF006a4e), Color(0xFF009597)];
        }
        break;

      default:
        {
          return [Color(0xFFFF4E50), Color(0xFFFC00FF)];
        }
        break;
    }
  }

  _chooseShadow(e) {
    switch (e) {
      case "Societe Generale":
        {
          return Color(0xFF56000b);
        }
        break;

      case "Banque Postale":
        {
          return Color(0xFF716c3d);
        }
        break;

      case "CIC":
        {
          return Color(0xFF00458d);
        }
        break;

      case "BNP Paribas":
        {
          return Color(0xFF004034);
        }
        break;

      case "HSBC":
        {
          return Color(0xFFee8387);
        }
        break;

      case "LCL":
        {
          return Color(0xFF978a42);
        }
        break;

      case "Caisse d’Epargne":
        {
          return Color(0xFFf17b89);
        }
        break;

      case "Crédit Agricole":
        {
          return Color(0xFF008073);
        }
        break;

      default:
        {
          return Color(0xFFFE23B1);
        }
        break;
    }
  }

  _chooseLogoBank(e) {
    switch (e) {
      case "Societe Generale":
        {
          return AssetImage('assets/img/Société_Générale.png');
        }
        break;

      case "Banque Postale":
        {
          return AssetImage('assets/img/La_Banque_Postale.png');
        }
        break;

      case "CIC":
        {
          return  AssetImage('assets/img/CIC.png');
        }
        break;

      case "BNP Paribas":
        {
          return  AssetImage('assets/img/BNP_Paribas.png');
        }
        break;

      case "HSBC":
        {
          return  AssetImage('assets/img/HSBC.png');
        }
        break;

      case "LCL":
        {
          return  AssetImage('assets/img/LCL.jpg');
        }
        break;

      case "Caisse d’Epargne":
        {
          return  AssetImage('assets/img/Caisse_d’Epargne.png');
        }
        break;

      case "Crédit Agricole":
        {
          return AssetImage('assets/img/Crédit_Agricole.png');
        }
        break;

      default:
        {
          return  AssetImage('assets/img/default.png');
        }
        break;
    }
  }

  Widget _buildCard(int i) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: new GestureDetector(
        onTap: () {
          print("Container clicked");
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              const Radius.circular(13),
            ),
            gradient: LinearGradient(
                // TODO: change color
                colors: _chooseColor(cards[i].bankName),
                stops: [0.1, 0.9],
                transform: GradientRotation(45)),
            boxShadow: [
              BoxShadow(
                // TODO: change color
                color: _chooseShadow(cards[i].bankName),
                spreadRadius: 1,
                blurRadius: 15,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(cards[i].bankName,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Container(
                      constraints: BoxConstraints(maxWidth: 70, maxHeight: 40),
                      child: Image(
                        image: _chooseLogoBank(cards[i].bankName)
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 50),
                  child: Text(cards[i].numberCard,
                      style: TextStyle(
                          color: Colors.white, wordSpacing: 7, fontSize: 25)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(cards[i].userName,
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    SvgPicture.asset(
                      cards[i].logoService,
                      color: Colors.white,
                      semanticsLabel: 'service logo',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

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
          child: Container(
        child: Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(parent: null),
                  itemCount: cards.length,
                  itemBuilder: (BuildContext ctxt, int i) {
                    return _buildCard(i);
                  }),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/creat_card');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}
