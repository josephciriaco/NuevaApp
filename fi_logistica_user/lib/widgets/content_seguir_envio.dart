import 'package:fi_logistica_user/widgets/button_adjunto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentSeguirEnvio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20,bottom: 30),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[

                      Padding(padding: EdgeInsets.only(top: 20, right: 20,left: 20),child: Text('Registrado',textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),),

                      Container(margin: EdgeInsets.only(top: 20), width: 130.0, height: 130.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/paquete.png')), shape: BoxShape.circle,),),

                      Padding(padding: EdgeInsets.only(top: 10,),child: Text('Hemos recepcionado tu \nenvío.',textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.black),),),

                    ],),


                  Column(
                    children: <Widget>[

                      Padding(padding: EdgeInsets.only(top: 50, right: 20,left: 20),child: Text('Paquete envíado',textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),),

                      Container(margin: EdgeInsets.only(top: 20), width: 130.0, height: 130.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/en_ruta.png')), shape: BoxShape.rectangle,),),

                      Padding(padding: EdgeInsets.only(top: 0,),child: Text('Muy pronto llegará a tu \ndestino.',textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.black),),),

                    ],),


                  Column(
                    children: <Widget>[

                      Padding(padding: EdgeInsets.only(top: 50, right: 20,left: 20),child: Text('Entregado',textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),),

                      Container(margin: EdgeInsets.only(top: 30), width: 130.0, height: 130.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/entregado.png')), shape: BoxShape.rectangle,),),

                      Padding(padding: EdgeInsets.only(top: 10,bottom: 20),child: Text('¡GENIAL! \nHemos entregado tu envío.',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),),),

                    ],),

                ],
              ),

              Column(
                children: <Widget>[
                  SizedBox(height: 100,),

                  Container(alignment: Alignment.center,width: 30.0, height: 30.0, decoration: BoxDecoration(color: Color(0xff0F6199),shape: BoxShape.circle,),
                    child: Text('1',style: TextStyle(color: Colors.white,fontSize: 18)),), //circulo
                  Container(
                    height: 250,width: 3,decoration: BoxDecoration(color: Color(0xff0F6199)),), //linea

                  //Container(height: 40,width: 3,decoration: BoxDecoration(color: Color(0xff0F6199)),),

                  Container(alignment: Alignment.center,width: 30.0, height: 30.0, decoration: BoxDecoration(color: Colors.grey,shape: BoxShape.circle,),
                    child: Text('2',style: TextStyle(color: Colors.white,fontSize: 18)),),
                  Container(
                    height: 260,width: 3,decoration: BoxDecoration(color: Colors.grey),),

                  Container(alignment: Alignment.center,width: 30.0, height: 30.0, decoration: BoxDecoration(color: Colors.grey,shape: BoxShape.circle,),
                    child: Text('3',style: TextStyle(color: Colors.white,fontSize: 18)),),

                  SizedBox(height: 100,),
                ],
              )
            ],
          ),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.grey,
            endIndent: 20,
            indent: 20,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, right: 20,left: 20,bottom: 5),child: Text('Información del envío:',textAlign: TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
              Divider(
                height: 0, thickness: 4, color: Color(0xff0F6199), endIndent: 320, indent: 20,),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(top: 25,left: 20), child: Text('N° de Traking:',style: TextStyle(fontSize: 15),),),
                      Container(margin: EdgeInsets.only(top: 25,left: 5),child: Text('45454545/20',style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(top: 10,left: 20), child: Text('Enviado por:',style: TextStyle(fontSize: 15),),),
                      Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('Joseph Ciriaco',style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(top: 10,left: 20), child: Text('Recibido por:',style: TextStyle(fontSize: 15),),),
                      Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('Cesar Miraflorino',style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(top: 10,left: 20), child: Text('Contenido:',style: TextStyle(fontSize: 15),),),
                      Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('Laptop',style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(top: 10,left: 20), child: Text('Peso:',style: TextStyle(fontSize: 15),),),
                      Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('5',style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(top: 10,left: 20), child: Text('Piezas:',style: TextStyle(fontSize: 15),),),
                      Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('1',style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],
                  ),
                ],
              ),
              Container(
                height: 150,
                margin: EdgeInsets.only(left: 20,right: 20,top: 30),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Color(0xff0F6199),boxShadow: <BoxShadow>[BoxShadow(color: Colors.black54,offset: Offset(0.0, 3.0),blurRadius: 5.0)],borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Fecha de Registro',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w800),),
                        Text('07/09/2020',style: TextStyle(color: Colors.white,fontSize: 14),),
                        SizedBox(height: 30),
                        Text('Origen',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w800),),
                        Text('Comas',style: TextStyle(color: Colors.white,fontSize: 14),)
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Fecha de Entrega',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w800),),
                        Text('12/09/2020',style: TextStyle(color: Colors.white,fontSize: 14),),
                        SizedBox(height: 30),
                        Text('Destino',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w800),),
                        Text('Miraflores',style: TextStyle(color: Colors.white,fontSize: 14),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 20,left: 20,bottom: 5),child: Text('Adjuntos:',textAlign: TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
              Divider(
                height: 0, thickness: 4, color: Color(0xff0F6199), endIndent: 465, indent: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonAdjunto('Ver constancia de entrega'),
                  Container(margin: EdgeInsets.only(left: 30), width: 80.0, height: 80.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/web.png')), shape: BoxShape.rectangle,),),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 20,left: 20,bottom: 5),child: Text('Hoja de Tracking:',textAlign: TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
              Divider(
                height: 0, thickness: 4, color: Color(0xff0F6199), endIndent: 375, indent: 20,),
              Container(child: Row(
                mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(margin: EdgeInsets.only(left: 10), child: Text('Fecha:',style: TextStyle(fontSize: 15),),),
                  Container(margin: EdgeInsets.only(left: 5),child: Text('12/09/20',style: TextStyle(fontWeight: FontWeight.bold),),),
                ],
              ),
                height: 30,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(color: Color(0xff0F6199)),),
              Row(
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top: 10,left: 30), child: Text('Destino:',style: TextStyle(fontSize: 15),),),
                  Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('Miraflores',style: TextStyle(fontWeight: FontWeight.bold),),),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top: 10,left: 30), child: Text('Estado:',style: TextStyle(fontSize: 15),),),
                  Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('Entregado',style: TextStyle(fontWeight: FontWeight.bold),),),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top: 10,left: 30), child: Text('Observación:',style: TextStyle(fontSize: 15),),),
                  Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text('Todo conforme.',style: TextStyle(fontWeight: FontWeight.bold),),),
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}