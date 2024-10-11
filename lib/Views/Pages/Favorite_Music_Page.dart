import 'package:btmusicappliction/Models/JsonDesirializationModels/Collection_Model.dart';
import 'package:btmusicappliction/ViewModels/MainPageViewModel.dart';
import 'package:btmusicappliction/Views/Elements/Button_Play_All.dart';
import 'package:btmusicappliction/Views/Elements/Music_View.dart';
import 'package:btmusicappliction/Views/Pages/Main_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/assets.dart';
import '../Elements/Button_Exit.dart';

class FavoriteMusicPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FavoriteMusicPageState();
  }

}
class FavoriteMusicPageState extends State<FavoriteMusicPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(decoration: BoxDecoration(
    gradient: LayoutStyles.BackgroundColor,
    ),
    child: Stack(children: [
      Align(alignment: Alignment.bottomRight, child: Image.asset("assets/images/maskot_page.png"),),
      ListView(children: [
        Align(alignment: Alignment.topLeft , child: ButtonExit(50, 50, MainPageController(), null),),
        Align(alignment: Alignment.topCenter, child: Text("Избранное"),),

        Padding(padding: EdgeInsets.fromLTRB(0,500,0,0), child: Align(alignment: Alignment.bottomCenter, child: ButtonPlayAll(100, 50, Colors.white54, Text("Запустить всё")),),)
        ])
    ])));
  }

}