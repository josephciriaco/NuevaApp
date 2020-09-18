import 'package:flutter/material.dart';

class FloatingActionButtonYellow extends StatefulWidget{

  Color color;
  final IconData iconData;
  final VoidCallback onPressed;
  FloatingActionButtonYellow({
    Key Key,
    this.color,
    @required this.iconData,
    @required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonYellow();
  }

}


class _FloatingActionButtonYellow extends State<FloatingActionButtonYellow>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: widget.color,
      mini: true,
      tooltip: "Fav",
      onPressed: widget.onPressed,
      child: Icon(
        widget.iconData
        //Icons.favorite
      ),
      heroTag: null,
    );
  }

}