import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/google_maps_oficina.dart';
import 'package:flutter/material.dart';

class Oficinas extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Oficinas();
  }

}

class _Oficinas extends State<Oficinas>{
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
        children: <Widget>[
          Container(
            child: GoogleMpasOficina(),
          )
        ],
      ),
    );
  }
}