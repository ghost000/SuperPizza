import 'package:flutter/material.dart';
import 'package:superpizza/model/food.dart';
import 'dart:math' as math;

class ItemCard extends StatelessWidget {
  const ItemCard({this.food, this.increment, this.decrement});

  final Food food;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: new Container(
          decoration: new BoxDecoration(
            color: Colors.deepOrangeAccent,
            shape: BoxShape.circle,
          ),
          child: new Container(
            height: math.min(300.0, MediaQuery.of(context).size.height),
            child: new Container(
              margin: const EdgeInsets.only(top: 70.0, bottom: 30.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(food.name,
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Dosis')),
                  new ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new RaisedButton(
                        color: Colors.black,
                        textColor: Colors.white,
                        child: const Text('OPIS PIZZY',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Dosis')),
                        onPressed: () {

                              print(this.food.description);
                          showDialog(
                            context: context,
                            child: new AlertDialog(
                              title: const Text("Opis"),
                              content: Text(food.description),
                              actions: [
                                new FlatButton(
                                  child: const Text("Ok"),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  new DecoratedBox(
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: new ClipRRect(
                      borderRadius: new BorderRadius.circular(50.0),
                      child: new MaterialButton(
                        minWidth: 70.0,
                        onPressed: null,
                        color: Colors.grey[900],
                        child: new Text(food.price,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                  new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new IconButton(
                          icon: new Icon(
                            Icons.remove_circle,
                            size: 35.0,
                          ),
                          onPressed: food.quantity == 0 ? null : decrement,
                        ),
                        new Container(
                          decoration: new BoxDecoration(
                            border: new Border.all(
                              //color: Colors.blueGrey,

                              width: 2.90,
                            ),
                          ),
                          child: new SizedBox(
                            width: 90.0,
                            height: 45.0,
                            child: new DecoratedBox(
                              decoration: new BoxDecoration(
                                color: Colors.black,
                              ),
                              child: new Center(
                                  child: new Text('${food.quantity}',
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontSize: 30.0,
                                      ),
                                      textAlign: TextAlign.center)),
                            ),
                          ),
                        ),
                        new IconButton(
                          icon: new Icon(
                            Icons.add_circle,
                            size: 35.0,
                          ),
                          onPressed: increment,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
