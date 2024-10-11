import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPlayAll extends ButtonsInMyApp{
  Color color;
  Text text;
  ButtonPlayAll(super.width, super.height, this.color, this.text);
  @override
  Widget build(BuildContext context) {
    return  SizedBox(width: width, height: height, child:  Container(decoration:BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width:1,
          color: Colors.grey,
        )), child: Align(alignment: Alignment.center  ,child: text),));
  }

}