import 'package:fi_logistica_user/widgets/tracking_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumTracking extends StatefulWidget {
  //String texto;

  //NumTracking(this.texto);
  final _controllerNum =  TextEditingController();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NumTracking();
  }
}

class _NumTracking extends State<NumTracking> {
  String dropdownValue = 'Año';

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 180,
            margin: EdgeInsets.only(top: 20.0,left: 10,right: 10,bottom: 30),
            child: TrackingInput(
              hintText: "Ingrese N° Tracking",
              inputType: null,
              maxLines: 1,
              controller: widget._controllerNum,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,bottom: 20,),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.keyboard_arrow_down,color: Color(0xff0F6199),),
              iconSize: 30,
              //elevation: 16,
              style: TextStyle(color: Color(0xff0F6199), fontSize: 18),
              underline: Container(
                height: 2,
                color: Color(0xff0F6199),
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['Año','2020', '2019', '2018']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
