import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonCall extends StatefulWidget {
  String textCall;
  ButtonCall(this.textCall);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonCall();
  } }


class _ButtonCall extends State<ButtonCall>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => launch("tel://982011463"),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        height: 20.0,
        width: screenWidth,
        child: FittedBox(
          child: Text(
            widget.textCall,
            style: TextStyle(
                fontSize: 20.0, fontFamily: "Lato", color: Color(0xff000000)),
          ),
        ),
      ),
    );
  }
}
