import 'dart:io';

import 'package:btmusicappliction/Buisnes_Logic/FileContext.dart';
import 'package:btmusicappliction/Buisnes_Logic/SoundCloudClient.dart';
import 'package:btmusicappliction/Buisnes_Logic/SoundCloudConfigModel.dart';
import 'package:btmusicappliction/Models/JsonDesirializationModels/Collection_Model.dart';
import 'package:btmusicappliction/ViewModels/MainPageViewModel.dart';
import 'package:btmusicappliction/Views/Elements/Button_Exit.dart';
import 'package:btmusicappliction/Views/Elements/Music_View.dart';
import 'package:btmusicappliction/Views/Pages/Search_Results_Page.dart';
import 'package:btmusicappliction/main.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import '../../core/assets.dart';

class SearchPage extends StatefulWidget {
  SoundCloudClient client;

  SearchPage(this.client);
  @override
  State<StatefulWidget> createState() {
     return SearchPageState(client);
  }
}
class SearchPageState extends State<SearchPage>{
  SoundCloudClient client;
  SearchPageState(this.client);
  @override
  Widget build(BuildContext context) {
     FileContext fileContext = FileContext.create();
     getApplicationDocumentsDirectory().then((dir){
       String path = dir.path + "/dir";
       fileContext.path = path;
     });
     List<MusicView>? listResultsSearch = [];
     int fixedlengthHistory = 5;
     List<ListTile>? listHistory = [];
     return Scaffold(body: Container(decoration: BoxDecoration(
       gradient: LayoutStyles.BackgroundColor,
     ), child: Stack( children: [
       Align(alignment: Alignment.bottomRight, child: Image.asset("assets/images/maskot_page.png"),),
       ListView(children: [
       Align(alignment: Alignment.topLeft , child: ButtonExit(50, 50, MainPageController(), null) ,),
       Padding(padding: EdgeInsets.fromLTRB(0,10,0,0), child: Align(alignment: Alignment.topCenter,child: SearchAnchor(
    builder: (BuildContext context, SearchController controller) {
      return  SearchBar(
        controller: controller,
        padding: const WidgetStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0)),
        onTap: () {
          controller.openView();
        },
        onChanged: (_) {
          controller.openView();
        },

        onSubmitted: (variant)
        {
          if(listHistory.length < fixedlengthHistory){
            bool redflag = false;
            for(var el in listHistory){
              if((el.title as Text).data == variant){
                redflag = true;
              }
            }
            if(redflag == false) {
              listHistory.add(ListTile(
                title: Text(variant ?? ""),
              ));
            }
          }
          else{
            listHistory.insert(0, ListTile(
              title: Text(variant ?? ""),
            ));
            listHistory.removeAt(listHistory.length - 1);
          }
          client.SearchTrack(nameOfTrack: variant).then((info) {
            for(var track in info.collection!){
              listResultsSearch.add(new MusicView(200, 60, Colors.black, track, Alignment.centerLeft, Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0)),null,()
              {
                client.Download(track.media!.transcodings![0]).then((val) {
                  fileContext.AddUseFFmpeg(val, track.title ?? "??");
                });
              }));
            }
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultPage(music: listResultsSearch,)));
          });
        },
        leading: const Icon(Icons.search),
      );
    }, suggestionsBuilder:
         (BuildContext context, SearchController controller) {
     return listHistory;
     }))
     )
     ]),
     ])));
  }
}
