import 'package:flutter/material.dart';

import 'package:superpizza/model/PersonalDate.dart';

class PayScreen extends StatefulWidget {
  @override
  _PayScreenState createState() => new _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  // @override
  // void dispose() {
  //   // Clean up the controller when the Widget is disposed
  //   myController.dispose();
  //   myController2.dispose();
  //   myController3.dispose();
  //   myController4.dispose();
  // }

  PersonalDate personalDate = new PersonalDate();
  final TextEditingController myController = new TextEditingController();
  final TextEditingController myController2 = new TextEditingController();
  final TextEditingController myController3 = new TextEditingController();
  final TextEditingController myController4 = new TextEditingController();

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
                //print(this.personalDate.city);
                showDialog(
                  context: context,
                  child: new AlertDialog(
                    title: const Text("Order status"),
                    content: Text("Order accepted"),
                    actions: [
                      new FlatButton(
                        child: const Text("Ok"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );

                // Navigator.push(
                //   context,
                //   new MaterialPageRoute(
                //       builder: (context) => new EndScreen()),
                // );
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
                  this.personalDate.city = text;
                },
                controller: myController,
                decoration: new InputDecoration(labelText: 'Enter your city'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 60.0),
              child: new TextField(
                onChanged: (String text) {
                  personalDate.street = text;
                },
                controller: myController2,
                decoration: new InputDecoration(labelText: 'Enter your street'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 120.0),
              child: new TextField(
                onChanged: (String text) {
                  personalDate.houseNumber = text;
                },
                controller: myController3,
                decoration:
                    new InputDecoration(labelText: 'Enter your house number'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 180.0),
              child: new TextField(
                onChanged: (String text) {
                  personalDate.apartmentNumber = text;
                },
                controller: myController4,
                decoration: new InputDecoration(
                    labelText: 'Enter your apartment number'),
              )),
        ],
      ),
    );
  }
}
