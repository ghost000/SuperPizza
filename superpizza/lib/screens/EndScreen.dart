 import 'package:flutter/material.dart';

class EndScreen extends StatefulWidget {
  @override
  _EndScreenState createState() => new _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey,
        title: new Text("Pay Screen"),
      ),
      body: new Stack(
        children: <Widget>[
          new Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 260.0, horizontal: 140.0),
            child: new RaisedButton(
              color: Colors.amber,
              onPressed: () {
                //print(myController.text);
                // If the form is valid, we want to show a Snackbar
                // Navigate back to first screen when tapped!
              },
              child: new Text('submit order'),
            ),
          ),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: new TextField(
                onChanged: (String text) {
                  //s1 = text;
                },
                //controller: myController,
                decoration: new InputDecoration(labelText: 'Enter your city'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 60.0),
              child: new TextField(
                onChanged: (String text) {
                  //s2 = text;
                },
                //controller: myController2,
                decoration: new InputDecoration(labelText: 'Enter your street'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 120.0),
              child: new TextField(
                onChanged: (String text) {
                  //s3 = text;
                },
                //controller: myController3,
                decoration:
                    new InputDecoration(labelText: 'Enter your house number'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 180.0),
              child: new TextField(
                onChanged: (String text) {
                  //s4 = text;
                },
                //controller: myController4,
                decoration: new InputDecoration(
                    labelText: 'Enter your apartment number'),
              )),
        ],
      ),
    );
  }
}