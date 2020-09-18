import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackingInput extends StatelessWidget{

  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLines = 1;

  TrackingInput({
    Key Key,
    @required this.hintText,
    @required this.inputType,
    @required this.controller,
    this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            border: InputBorder.none,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
            ),
        ),
      ),
    );
  }

}