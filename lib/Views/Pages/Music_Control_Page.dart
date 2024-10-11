import 'package:btmusicappliction/ViewModels/MainPageViewModel.dart';
import 'package:btmusicappliction/Views/Elements/Button_ILike_This_Music.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '../../core/assets.dart';
import '../Elements/Button_Exit.dart';
import '../Elements/Button_Placeholders.dart';

class MusicPage extends StatefulWidget{
  String? music;
  AudioPlayer? player;
  MusicPage({this.music, this.player});
  @override
  State<StatefulWidget> createState() {
    return MusicPageState(music: music, player: player);
  }
}
class MusicPageState extends State<MusicPage>{
  String? music;
  AudioPlayer? player;
  MusicPageState({this.music, this.player});
  @override
  Widget build(BuildContext context) {
     player!.setFilePath(music!);
     return Scaffold(body: Container(decoration: BoxDecoration(
       gradient: LayoutStyles.BackgroundColor,
     ), child: Stack(children: [
       Align(alignment: Alignment.bottomRight, child: Image.asset("assets/images/maskot_page.png"),),
       ListView(children: [
         Align(alignment: Alignment.topLeft , child: ButtonExit(50, 50, MainPageController(), (){
           player!.stop();
         })),
         Align(alignment: Alignment.center, child: Image.asset("assets/images/animations/disk.gif"),),
         Align(alignment: Alignment.centerRight , child: ButtonLike(50, 50),),
         StreamBuilder<Duration?>(stream: player!.durationStream, builder: (BuildContext context, AsyncSnapshot <Duration?> duration){
           return StreamBuilder<Duration>(stream: player!.positionStream, builder:(BuildContext context, AsyncSnapshot <Duration?> position) {
           return Slider(min: 0, max: duration.data!.inSeconds.toDouble(), value: position.data!.inSeconds.toDouble(), onChanged: (value) {
              final dur = Duration(seconds: value.toInt());
              player!.seek(dur);
           });
           });
         }),
         Padding(padding: EdgeInsets.fromLTRB(0,100,0,0) , child: Align(alignment: Alignment.topCenter, child: ButtonPlaceholderPlay(400,60, player!, Colors.white54)),)
       ])
     ])));
  }
}