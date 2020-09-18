import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget{

  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLines = 1;

  TextInput({
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
          fillColor: Color(0xFFffffff),
          border: InputBorder.none,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFffffff)),
            borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFffffff)),
                borderRadius: BorderRadius.all(Radius.circular(12.0))
            )
        ),
      ),
    );
  }

}