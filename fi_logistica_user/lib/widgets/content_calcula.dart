import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/button_general.dart';
import 'file:///C:/Users/joseph/AndroidStudioProjects/fi_logistica_user/lib/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentCalcula extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContentCalcula();
  }

}

class _ContentCalcula extends State<ContentCalcula>{
  String dropdownValue = 'SELECCIONE UN DEPARTAMENTO';
  String dropdownValue2 = 'NO HAS SELECCIONADO UN DEPARTAMENTO';
  String dropdownValue3 = 'NO HAS SELECCIONADO UNA PROVINCIA';
  String dropdownValue4 = 'SIN RECOJO';

  final _controllerNum =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[

        Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),child: Text('Enviar tus paquetes con FI LOGÍSTICA es fácil, rápido y seguro. ¡En tan soló 5 pasos!',textAlign: TextAlign.start,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Color(0xff96B830)),),),

        Container(margin: EdgeInsets.only(left: 10,top: 20,right: 10,bottom: 20), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Color(0xffF2F2F2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(padding: EdgeInsets.only(top: 20,left: 10,bottom: 10),child: Text('1. ¿A dónde lo llevamos?',textAlign: TextAlign.start,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Color(0xff000000)),),),

              Padding(padding: EdgeInsets.only(right: 10,left: 10),
                child: FittedBox(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.keyboard_arrow_down,color: Color(0xff000000),),
                    iconSize: 30,
                    //elevation: 16,
                    style: TextStyle(color: Color(0xff000000), fontSize: 15),dropdownColor: Color(0xff96B830),
                    underline: Container(height: 2, color: Color(0xff96B830),), //esto es la linea
                    onChanged: (String newValue) {setState(() {dropdownValue = newValue;});}, //ESTO ES PARA TRAER EL VALOR
                    items: <String>['SELECCIONE UN DEPARTAMENTO','Amazonas', 'Ancash', 'Apurimac']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value),);
                    }).toList(),
                  ),
                ),),

              Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 10),
                child: FittedBox(
                  child: DropdownButton<String>(
                    value: dropdownValue2,
                    icon: Icon(Icons.keyboard_arrow_down,color: Color(0xff000000),),
                    iconSize: 30,
                    //elevation: 16,
                    style: TextStyle(color: Color(0xff000000), fontSize: 15),dropdownColor: Color(0xff96B830),
                    underline: Container(height: 2, color: Color(0xff96B830),), //esto es la linea
                    onChanged: (String newValue) {setState(() {dropdownValue2 = newValue;});}, //ESTO ES PARA TRAER EL VALOR
                    items: <String>['NO HAS SELECCIONADO UN DEPARTAMENTO','Amazonas', 'Ancash', 'Apurimac']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value),);
                    }).toList(),
                  ),
                ),),

              Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 10),
                child: FittedBox(
                  child: DropdownButton<String>(
                    value: dropdownValue3,
                    icon: Icon(Icons.keyboard_arrow_down,color: Color(0xff000000),),
                    iconSize: 30,
                    //elevation: 16,
                    style: TextStyle(color: Color(0xff000000), fontSize: 15),dropdownColor: Color(0xff96B830),
                    underline: Container(height: 2, color: Color(0xff96B830),), //esto es la linea
                    onChanged: (String newValue) {setState(() {dropdownValue3 = newValue;});}, //ESTO ES PARA TRAER EL VALOR
                    items: <String>['NO HAS SELECCIONADO UNA PROVINCIA','Amazonas', 'Ancash', 'Apurimac']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value),);
                    }).toList(),
                  ),
                ),),

              Padding(padding: EdgeInsets.only(top: 20,left: 10),child: Text('2. ¿Lo recogemos?',textAlign: TextAlign.start,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Color(0xff000000)),),),

              Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 10),
                child: FittedBox(
                  child: DropdownButton<String>(
                    value: dropdownValue4,
                    icon: Icon(Icons.keyboard_arrow_down,color: Color(0xff000000),),
                    iconSize: 30,
                    //elevation: 16,
                    style: TextStyle(color: Color(0xff000000), fontSize: 15),dropdownColor: Color(0xff96B830),
                    underline: Container(height: 2, color: Color(0xff96B830),), //esto es la linea
                    onChanged: (String newValue) {setState(() {dropdownValue4 = newValue;});}, //ESTO ES PARA TRAER EL VALOR
                    items: <String>['SIN RECOJO','CON RECOJO']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value),);
                    }).toList(),
                  ),
                ),),

              Padding(padding: EdgeInsets.only(top: 20,left: 10),child: Text('3. ¿Qué envías?',textAlign: TextAlign.start,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Color(0xff000000)),),),

              Container(
                child: Row(
                  children: <Widget>[

                    Column(children: <Widget>[
                        Container(margin: EdgeInsets.only(left: 30,top: 20,bottom: 5), width: 70.0, height: 70.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/sobre.jpg')), shape: BoxShape.circle,),),
                        Container(width: 100, margin: EdgeInsets.only(left: 25), padding: EdgeInsets.all(5), decoration: BoxDecoration(color: Colors.black45,borderRadius: BorderRadius.all(Radius.circular(5.0)),), child: Text('Sobres',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),)
                    ],),

                    SizedBox(width: 30,),

                    Column(children: <Widget>[
                      Container(margin: EdgeInsets.only(left: 20,top: 20,bottom: 5), width: 70.0, height: 70.0, decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/paquete.jpg')), shape: BoxShape.circle,),),
                      Container(width: 100, margin: EdgeInsets.only(left: 20), padding: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)),), child: Text('Paquetes',style: TextStyle(color: Color(0xff000000),fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),)
                    ],)

                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 20,left: 10),child: Text('4. ¿Cúanto pesa?',textAlign: TextAlign.start,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Color(0xff000000)),),),

              Container(
                margin: EdgeInsets.only(top: 20.0,left: 10,right: 10),
                child: TextInput(
                  hintText: "peso",
                  inputType: null,
                  maxLines: 1,
                  controller: _controllerNum,
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 10,left: 20),child: Text('GRAMOS(GR)',textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Color(0xff000000)),),),

              Padding(padding: EdgeInsets.only(top: 20,left: 10),child: Text('5. Precio Estimado:',textAlign: TextAlign.start,style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Color(0xff000000)),),),

              Padding(padding: EdgeInsets.only(top: 20,left: 112),child: Text('S/.0.00',textAlign: TextAlign.center,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Color(0xff96B830)),),),

              Container(
                margin: EdgeInsets.only(top: 20,bottom: 30,left: 75),
                child: ButtonGeneral(onPressed: (){},text: 'Calcular Envío',height: 50,width: 150,color: Color(0xff0F6199),colorText: Colors.white,),
              ),

            ],
          ),
        )

      ],
    );
  }

}