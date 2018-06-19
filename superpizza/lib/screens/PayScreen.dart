import 'package:flutter/material.dart';
import 'package:superpizza/model/PersonalDate.dart';

class PayScreen extends StatefulWidget {
  @override
  _PayScreenState createState() => new _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  PersonalDate personalDate = new PersonalDate();
  final TextEditingController myController = new TextEditingController();
  final TextEditingController myController2 = new TextEditingController();
  final TextEditingController myController3 = new TextEditingController();
  final TextEditingController myController4 = new TextEditingController();
  Color color0 = Colors.grey;
  Color color1 = Colors.grey;
  Color color2 = Colors.grey;
  String platnosc = "";
  String bank = "";
  String city = "";
  String street = "";
  String houseNumber = "";
  String apartmentNumber = "";
  bool isVisible = false;

  void onPressed1() {
    setState(() {
      color0 = Colors.red;
      color1 = Colors.grey;
      color2 = Colors.grey;
      platnosc = "Cash payment";
      isVisible = false;
      bank = "";
    });
  }

  void onPressed2() {
    setState(() {
      color0 = Colors.grey;
      color1 = Colors.red;
      color2 = Colors.grey;
      platnosc = "Card payment";
      isVisible = false;
      bank = "";
    });
  }

  void onPressed3() {
    setState(() {
      color0 = Colors.grey;
      color1 = Colors.grey;
      color2 = Colors.red;
      platnosc = "PayU";
      isVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.grey,
          title: new Text("Pay Screen"),
        ),
        body: new Container(
            child: new Column(children: <Widget>[
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: new TextField(
                onChanged: (String text) {
                  city = text;
                },
                controller: myController,
                decoration: new InputDecoration(labelText: 'Enter your city'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: new TextField(
                onChanged: (String text) {
                  street = text;
                },
                controller: myController2,
                decoration: new InputDecoration(labelText: 'Enter your street'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: new TextField(
                onChanged: (String text) {
                  houseNumber = text;
                },
                controller: myController3,
                decoration:
                    new InputDecoration(labelText: 'Enter your house number'),
              )),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: new TextField(
                onChanged: (String text) {
                  apartmentNumber = text;
                },
                controller: myController4,
                decoration: new InputDecoration(
                    labelText: 'Enter your apartment number'),
              )),
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: new RaisedButton(
              color: Colors.amber,
              onPressed: () {
                showDialog(
                  context: context,
                  child: new AlertDialog(
                    title: const Text("Order status"),
                    content: Text("Order accepted " +
                        this.platnosc +
                        " " +
                        this.bank +
                        "\n city: " +
                        this.city +
                        " \n street: " +
                        this.street +
                        " \n house number: " +
                        this.houseNumber +
                        " \n apartment number: " +
                        this.apartmentNumber),
                    actions: [
                      new FlatButton(
                        child: const Text("Ok"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              },
              child: new Text('submit order'),
            ),
          ),
          new ButtonBar(
            children: <Widget>[
              new RaisedButton(
                  child: new Text("Cash payment",
                      style: new TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0)),
                  color: color0,
                  onPressed: onPressed1),
              new RaisedButton(
                  child: new Text("Card payment",
                      style: new TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 19.0)),
                  color: color1,
                  onPressed: onPressed2),
              new RaisedButton(
                  child: new Text("PayU",
                      style: new TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0)),
                  color: color2,
                  onPressed: onPressed3)
            ],
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: isVisible
                ? new ButtonBar(
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: new FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              bank = "bank1";
                            });
                          },
                          heroTag: null,
                          elevation: 0.0,
                          child: new ConstrainedBox(
                            constraints: new BoxConstraints.expand(),
                            child:
                                new Image.asset('assets/images/download1.jpeg'),
                          ),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: new FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              bank = "bank2";
                            });
                          },
                          heroTag: null,
                          elevation: 0.0,
                          child: new ConstrainedBox(
                            constraints: new BoxConstraints.expand(),
                            child:
                                new Image.asset('assets/images/download2.png'),
                          ),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: new FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              bank = "bank3";
                            });
                          },
                          heroTag: null,
                          elevation: 0.0,
                          child: new ConstrainedBox(
                            constraints: new BoxConstraints.expand(),
                            child:
                                new Image.asset('assets/images/download3.png'),
                          ),
                        ),
                      ),
                    ],
                  )
                : null,
          ),
          new Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: isVisible
                  ? new ButtonBar(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: new FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                bank = "bank4";
                              });
                            },
                            heroTag: null,
                            elevation: 0.0,
                            child: new ConstrainedBox(
                              constraints: new BoxConstraints.expand(),
                              child: new Image.asset(
                                  'assets/images/download4.png'),
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: new FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                bank = "bank5";
                              });
                            },
                            heroTag: null,
                            elevation: 0.0,
                            child: new ConstrainedBox(
                              constraints: new BoxConstraints.expand(),
                              child: new Image.asset(
                                  'assets/images/download5.jpeg'),
                            ),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: new FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                bank = "bank6";
                              });
                            },
                            heroTag: null,
                            elevation: 0.0,
                            child: new ConstrainedBox(
                              constraints: new BoxConstraints.expand(),
                              child: new Image.asset(
                                  'assets/images/download6.jpeg'),
                            ),
                          ),
                        ),
                      ],
                    )
                  : null),
        ])));
  }
}
