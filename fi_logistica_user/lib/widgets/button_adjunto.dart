import 'package:fi_logistica_user/courier/ui/widgets/adjunto_contancia.dart';
import 'package:flutter/material.dart';

class ButtonAdjunto extends StatefulWidget {
  String textArchivo;
  ButtonAdjunto(this.textArchivo);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonAdjunto();
  }
}

class _ButtonAdjunto extends State<ButtonAdjunto>{
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AdjuntoConstancia()),
        );
      },
      child: Container(
        height: 40.0,
        width: 180,
        child: FittedBox(
          child: Text(
            widget.textArchivo,
            style: TextStyle(
                fontSize: 18.0, fontFamily: "Lato", color: Color(0xff000000)),
          ),
        ),
      ),
    );
  }
}