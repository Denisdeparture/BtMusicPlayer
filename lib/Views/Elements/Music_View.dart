import 'package:btmusicappliction/Models/JsonDesirializationModels/Collection_Model.dart';
import 'package:btmusicappliction/Views/Elements/Button_Delete.dart';
import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicView extends ButtonsInMyApp{
  Color color;
  Collection music;
  Alignment alignment;
  Padding padding;
  Widget? child;
  VoidCallback? onPressed;
  MusicView(super.width, super.height, this.color, this.music, this.alignment, this.padding,this.child, this.onPressed);
  @override
  Widget build(BuildContext context) {
   return SizedBox( width: width, height: height, child: Padding(padding: padding.padding, child:  ElevatedButton(
        onPressed: onPressed,
        child:
            Row(children: [
              Align(alignment: Alignment.centerLeft, child:  Text(music.title ?? "??", style: TextStyle(fontSize: 10, color: color, overflow: TextOverflow.ellipsis ),),),
              if(child != null) child!
            ],)
    )));
  }
  
}