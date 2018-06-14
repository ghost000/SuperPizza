import 'package:flutter/material.dart';
import 'package:superpizza/screens/PayScreen.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new Text('MENU',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 29.0,
                          fontFamily: 'Dosis',
                          fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
          new IconButton(
              tooltip: 'Shopping Cart',
              icon: new Icon(const IconData(0xe807, fontFamily: 'fontello'),
                  color: Colors.black87, size: 30.2,),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new PayScreen()),
                );
              }),
        ],
      ),
    );
  }
}


