import 'package:flutter/material.dart';

class AdjuntoConstancia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0xff0F6199),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Contancia de envío', style: TextStyle(color: Color(0xff0F6199)),),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/constancia.jpg'))),
      ),
    );
  }
}