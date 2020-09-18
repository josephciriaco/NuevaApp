import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldenboys/barbershop/ui/widgets/prueba_promotions.dart';
import 'package:goldenboys/widgets/gradient_back_generico.dart';

class Promotions extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Promotions();
  }
}

class _Promotions extends State<Promotions>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBackGenerico(height: 250.0),
          PruebaPromotions(),
        ],
      ),
    );
  }

}