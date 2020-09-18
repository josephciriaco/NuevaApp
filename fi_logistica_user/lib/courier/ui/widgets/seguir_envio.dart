import 'package:fi_logistica_user/widgets/content_seguir_envio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeguirEnvio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          title: Text('Seguimiento de Envío', style: TextStyle(color: Color(0xff0F6199)),),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 20,left: 20,bottom: 5),child: Text('Realiza el seguimiento de tu envío:',textAlign: TextAlign.start,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
                Divider(
                  height: 0, thickness: 4, color: Color(0xff0F6199), endIndent: 180, indent: 20,),
                ContentSeguirEnvio()
              ],
            ),

        ],
      ),
    );
  }

}