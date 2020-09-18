import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/button_general.dart';
import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/num_tracking.dart';
import 'package:fi_logistica_user/courier/ui/widgets/seguir_envio.dart';
import 'package:flutter/material.dart';

class ContentSeguimiento extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContentSeguimiento();
  }

}

class _ContentSeguimiento extends State<ContentSeguimiento>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[

        Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),child: Text('Realiza el seguimiento de tu envío',textAlign: TextAlign.start,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
        //Divider(height: 0, thickness: 2, color: Color(0xff0F6199), endIndent: 20, indent: 20,),

        Padding(padding: EdgeInsets.only(top: 30,left: 20), child: Row(children: <Widget>[Icon(Icons.radio_button_checked,color: Colors.grey,), Padding(padding: EdgeInsets.only(left: 5.0), child: Text("Número de tracking", style: TextStyle(fontSize: 18.0, color: Colors.grey)),)],),),

        Container(alignment: Alignment.centerLeft, padding: EdgeInsets.only(top: 40,left: 20), child: Text("Código:", style: TextStyle(fontSize: 18.0, color: Colors.grey)),),

        NumTracking(),

        ButtonGeneral(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SeguirEnvio()),
            );
          },
          text: 'Seguir envío',width: 200,height: 50,color: Color(0xff0F6199),colorText: Colors.white,)

      ],
    );
  }

}