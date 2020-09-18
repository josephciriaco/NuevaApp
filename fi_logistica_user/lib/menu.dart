import 'package:fi_logistica_user/courier/ui/screens/Calcula.dart';
import 'package:fi_logistica_user/courier/ui/screens/Contactanos.dart';
import 'package:fi_logistica_user/courier/ui/screens/Oficinas.dart';
import 'package:fi_logistica_user/courier/ui/screens/Seguimiento.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Menu();
  }

}

class _Menu extends State<Menu>{

  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    Seguimiento(),
    Calcula(),
    Oficinas(),
    Contactanos(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on,color: Color(0xff96B830),),
              title: Text("Seguimiento",
              style: TextStyle(
                color: Color(0xff0F6199)
              ),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_car, color: Color(0xff96B830)),
                title: Text("Calcula",
                style: TextStyle(
                  color: Color(0xff0F6199)
                ),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.map, color: Color(0xff96B830)),
                title: Text("Oficinas",
                style: TextStyle(
                  color: Color(0xff0F6199)
                ),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_in_talk, color: Color(0xff96B830)),
                title: Text("Contáctanos",
                style: TextStyle(
                  color: Color(0xff0F6199)
                ),)
            ),
          ]
        ),
      ),
    );
  }

}