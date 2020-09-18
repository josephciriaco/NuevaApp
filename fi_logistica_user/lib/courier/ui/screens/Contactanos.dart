import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/button_call.dart';
import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/button_general.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactanos extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Contactanos();
  }

}

class _Contactanos extends State<Contactanos>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffffffff),
          title: Image.asset('assets/images/logo_prueba.png', fit: BoxFit.fill,)
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(

          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(top: 20,left: 10,bottom: 10),
              child: Text('¡Bienvenidos a Fi Logística!',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xff000000)),),),

            InkWell(
                  onTap: () => launch("tel://982011463"),
                  child: Container(
                    width: 300,
                    height: 110,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                    decoration: BoxDecoration(color: Color(0xffF2F2F2),
                        boxShadow: <BoxShadow>[BoxShadow(color: Color(0xff96B830), blurRadius: 3.0, offset: Offset(0.0, 7.0))]),
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(bottom: 5), width: 70.0, height: 70.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/call.png')), shape: BoxShape.circle,),),
                        Text('Atención al cliente',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Color(0xff000000)),),
                      ],
                    ),
                  ),
                ),

            InkWell(
                  onTap: () => launch("tel://982011463"),
                  child: Container(
                    width: 300,
                    height: 110,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 30),
                    decoration: BoxDecoration(color: Color(0xffF2F2F2),boxShadow: <BoxShadow>[BoxShadow(color: Color(0xff96B830), blurRadius: 3.0, offset: Offset(0.0, 7.0))]),
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(bottom: 5), width: 70.0, height: 70.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/chat.png')), shape: BoxShape.circle,),),
                        Text('Atención al cliente',textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Color(0xff000000)),),
                      ],
                    ),
                  ),
                ),

            InkWell(
                  onTap: () => launch("tel://982011463"),
                  child: Container(
                    width: 300,
                    height: 110,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 30),
                    decoration: BoxDecoration(color: Color(0xffF2F2F2),boxShadow: <BoxShadow>[BoxShadow(color: Color(0xff96B830), blurRadius: 3.0, offset: Offset(0.0, 7.0))]),
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(bottom: 5), width: 70.0, height: 70.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/web.png')), shape: BoxShape.circle,),),
                        Text('Atención al cliente',textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Color(0xff000000)),),
                      ],
                    ),
                  ),
                ),

            Container(margin: EdgeInsets.only(right: 20,left: 20,bottom: 50,top: 20),child: ButtonGeneral(onPressed: (){},text: 'REGISTRA TU ENVÍO',height: 50,width: 200,color: Color(0xff0F6199),colorText: Colors.white,),)
          ],
        ),
      ),
    );
  }
}