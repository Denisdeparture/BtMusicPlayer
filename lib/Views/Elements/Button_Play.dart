import 'package:btmusicappliction/Buisnes_Logic/AudioPlayerApi.dart';
import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
class ButtonPlay extends StatefulWidget{

  bool? condition;
  double width;
  double height;
  AudioPlayer player;
  ButtonPlay(this.player ,this.width, this.height);
  @override
  State<StatefulWidget> createState() {
    return ButtonPlayState(player,width,height);
  }

}
class ButtonPlayState extends State{

  double width;
  double height;
  AudioPlayer audioPlayer;
  ButtonPlayState(this.audioPlayer,this.width, this.height);
  @override
  Widget build(BuildContext context) {
    String assetStop = "assets/images/play_circle_filled.png";
    String assetPlay = "assets/images/stop-button.png";

    return IconButton(
      icon: audioPlayer.playing ? Image.asset(assetPlay, width: width , height: height ) : Image.asset(assetStop, width: width, height: height,),
      iconSize: 50,
      onPressed: () {
        setState(() {
          var res = audioPlayer.playing ? audioPlayer.stop() : audioPlayer.play();
          res;
        });
      },
    );
  }


  
}