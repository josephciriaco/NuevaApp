import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/button_general.dart';
import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/content_calcula.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calcula extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Calcula();
  }

}

class _Calcula extends State<Calcula>{
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
            child: ListView(
              children: <Widget>[
                ContentCalcula(),
                Container(margin: EdgeInsets.only(left: 10,right: 10,bottom: 30), child: Text('Las tarifas son referenciales. Las tarifas incluyen IGV. Precios válido solo para el Servicio Regular de Lima a Provincia yde Lima a Lima. No incluye cargo adicional por el servicio de recojo. Los tiempos de entrega en condiciones regulares para ciudades principales son de 24 a 48 horas. Ciudades tránsito de 48 a 72 horas y lugares alejadosde 72 horas a más. Se considera paquete desde 501 gramos.',textAlign: TextAlign.center,),),
                Container(margin: EdgeInsets.only(right: 20,left: 20,bottom: 30),child: ButtonGeneral(onPressed: (){},text: 'REGISTRA TU ENVÍO',height: 50,width: 200,color: Color(0xff0F6199),colorText: Colors.white,),)
              ],
            ),
          )
        ],
      ),
    );
  }
}