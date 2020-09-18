import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonGeneral extends StatefulWidget{

  Color color;
  Color colorText;
  final String text;
  double width;
  double height;
  final VoidCallback onPressed; //esto es una variable y puede recibir una funcion como parametro

  ButtonGeneral({Key Key, @required this.text, @required this.onPressed, this.height, this.width, this.color,this.colorText});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonGeneral();
  }
}

class _ButtonGeneral extends State<ButtonGeneral>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: widget.color,
            boxShadow: <BoxShadow>[  //esto es para agregar una sombra
              BoxShadow(
                  color: Color(0xffdbdbdb), //el color de la sombra
                  blurRadius: 7.0,     //que tan degradado quieres
                  offset: Offset(0.0, 5.0) //la posicion de la sombra en X y Y
              )
            ],

        ),
        child: Padding(
          padding: EdgeInsets.only(right: 20, left: 20, bottom: 5, top: 5),
          child: FittedBox(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 10.0,
                        color: widget.colorText,
                    ),
                  ),
                ),


        )
      ),
    );
  }

}