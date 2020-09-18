import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/content_seguimiento.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seguimiento extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Seguimiento();
  }

}

class _Seguimiento extends State<Seguimiento>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffffffff),
        title: Image.asset('assets/images/logo_prueba.png', fit: BoxFit.fill,)
      ),
      body: Stack(
        alignment: Alignment(0.80,0.85),
        children: <Widget>[
          Container(
            child: ListView(
              children: <Widget>[
                ContentSeguimiento()
              ],),),
          FloatingActionButton(
            onPressed: (){},
            tooltip: "Fav",
            child: Icon(Icons.assignment),
            backgroundColor: Color(0xff0F6199)
          ),
          Container(
            margin: EdgeInsets.only(top: 180,left: 40.0),
            child: Padding(padding: EdgeInsets.all(5),child: Text('Registro',style: TextStyle(color: Color(0xff96B830),fontSize: 15),),),
            decoration: BoxDecoration(
              color: Color(0xff0F6199),
              borderRadius: BorderRadius.all(Radius.circular(10.0)), //esto es para todas la esquinas
              shape: BoxShape.rectangle, // para que la figura sea rectangular
            ),
          )
        ],
      ),
    );
  }
}