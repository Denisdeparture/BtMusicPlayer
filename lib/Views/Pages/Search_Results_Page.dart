import 'package:btmusicappliction/ViewModels/SearchPageViewModel.dart';
import 'package:btmusicappliction/Views/Elements/Music_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/assets.dart';
import '../Elements/Button_Exit.dart';

class SearchResultPage extends StatefulWidget{
  List<MusicView>? music;
  SearchResultPage({this.music});
  @override
  State<StatefulWidget> createState() {
    return SearchResultsPageState(music: music);
  }

}
class SearchResultsPageState extends State<StatefulWidget>{
  List<MusicView>? music;
  SearchResultsPageState({this.music});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(decoration: BoxDecoration(
      gradient: LayoutStyles.BackgroundColor
    ), child: ListView(children: [
      Align(alignment: Alignment.topLeft , child: ButtonExit(50, 50, SearchPageController(), null) ,),
     SizedBox(height: music!.length * music![0].height, width: music![0].width,child:  ListView.builder(itemCount: music!.length,itemBuilder: (BuildContext context, int index)
    {
      return music![index];
    }))])));
  }

}