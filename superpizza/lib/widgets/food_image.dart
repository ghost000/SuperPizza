import 'package:flutter/material.dart';
import 'package:superpizza/model/food.dart';

class FoodImage extends StatelessWidget {
  FoodImage({this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: FractionalOffset.topCenter,
      child:  new GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: new Hero(
          tag: 'icon-${food.id}',
          child: new Stack(
            children: <Widget>[
             new Image(
            image: new AssetImage(food.image),
            height: 255.0,
            width: 255.0,
          ),
        ],
        ),
      ),
      ),
    );
  }
}