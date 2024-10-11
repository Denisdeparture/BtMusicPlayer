import 'package:btmusicappliction/Buisnes_Logic/AudioPlayerApi.dart';
import 'package:btmusicappliction/Views/Elements/Button_Next.dart';
import 'package:btmusicappliction/Views/Elements/Button_Play.dart';
import 'package:btmusicappliction/Views/Elements/Button_Settings.dart';
import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'Button_Search.dart';
class ButtonPlaceholderPlay extends ButtonsInMyApp{
  Color color;
  AudioPlayer player;
  ButtonPlaceholderPlay(super.width, super.height, this.player , this.color);
  @override
  Widget build(BuildContext context) {
    return  SizedBox(width: width, height: height, child:  Container(decoration:BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
    width:1,
    color:Colors.grey,
    )),
      child: ListView(children:
      [
        Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0), child: Align(alignment: Alignment.bottomLeft, child: Image.asset("assets/images/disk_dvd_icon.png", width: 60))),
        Padding(padding: const EdgeInsets.fromLTRB(140, 10, 0, 0), child: Align(alignment: Alignment.bottomLeft, child: RotatedBox(quarterTurns: 10,child: ButtonNextMusic(50,50)),),) ,
        Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 6), child: Align(alignment: Alignment.bottomCenter, child:ButtonPlay(player,50,50 ) ,),) ,
        Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0), child: Align(alignment: Alignment.bottomRight, child: ButtonNextMusic(50,50) ,),) ,
      ],
        scrollDirection: Axis.horizontal,),
    ));
  }
}


