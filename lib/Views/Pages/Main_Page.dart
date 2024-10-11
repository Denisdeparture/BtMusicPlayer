import 'dart:io';

import 'package:btmusicappliction/Models/JsonDesirializationModels/Collection_Model.dart';
import 'package:btmusicappliction/ViewModels/MusicControlPageViewModel.dart';
import 'package:btmusicappliction/ViewModels/SearchPageViewModel.dart';
import 'package:btmusicappliction/Views/Elements/Button_Delete.dart';
import 'package:btmusicappliction/Views/Elements/Button_Placeholders.dart';
import 'package:btmusicappliction/Views/Elements/Button_Search.dart';
import 'package:btmusicappliction/Views/Elements/Button_Settings.dart';
import 'package:btmusicappliction/Views/Elements/Music_View.dart';
import 'package:btmusicappliction/Views/Pages/Music_Control_Page.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../Buisnes_Logic/FileContext.dart';
import '../../core/assets.dart';
class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }

}
class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    Permission.storage.request();
    FileContext fileContext = FileContext.create();
    List<MusicView>? music = [];
    return Scaffold(body: Container(decoration: BoxDecoration(
      gradient: LayoutStyles.BackgroundColor,
    ),
      child: Stack(children: [
        Align(alignment: Alignment.bottomRight, child: Image.asset("assets/images/maskot_page.png"),),
        ListView(children:
      [
      SizedBox(height: 50, child:Container(child: ListView(children: [
          Container(child: Padding(padding: const EdgeInsets.fromLTRB(0, 0, 280, 0), child:Align(alignment: Alignment.topRight, child: ButtonSearch(50, 50, SearchPageController())))),
          Container(child: Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0), child:Align(alignment: Alignment.topLeft, child: ButtonSettings(50, 50)))),
        ],scrollDirection: Axis.horizontal, ),)),
        Container(child:  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
       child: Align(alignment: Alignment.centerLeft,
          child: Text("Недавние", textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black, fontSize: 20)))
      )),
       FutureBuilder(future: getApplicationDocumentsDirectory(), builder: (BuildContext context, AsyncSnapshot<Directory> snapshot)
       {
         try {
           fileContext.path = "${snapshot.data?.path}/dir";
           var all = fileContext.All();
           if (all != null) {
              for (var file in all) {
               music.add(new MusicView(
                   200,
                   60,
                   Colors.black,
                   new Collection(title: file.path.substring(file.path.lastIndexOf("/") + 1, file.path.length - 1)),
                   Alignment.centerLeft,
                   Padding(padding: EdgeInsets.symmetric(
                       vertical: 10, horizontal: 0)),  ButtonDelete(50,50, file.path), () {
                 Navigator.push(context, MaterialPageRoute(
                     builder: (context) => MusicController(music: file.path)));
               }));
             }
           }
           return SizedBox(height: music!.length * music![0].height,
               width: music![0].width,
               child: ListView.builder(
                   itemBuilder: (BuildContext context, int index) {
                     return music![index];
                   }));
         } catch(e){
           return Container();
         }
       }),
      // Container(child:  Padding(padding: const EdgeInsets.fromLTRB(0, 200, 0, 0), child: Align(alignment: Alignment.bottomCenter, child: ButtonPlaceholderPlay(340, 60, Colors.white),),))
    ]
          )
    ])
    ),backgroundColor: Colors.transparent.withOpacity(0));
  }

}