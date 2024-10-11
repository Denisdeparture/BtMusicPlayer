import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSearch extends ButtonsInMyApp{
  Widget pageToGo;
  ButtonSearch(super.width, super.height, this.pageToGo);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset("assets/images/search.png", width: width , height: height ),
      iconSize: 50,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => pageToGo));
      },
    );
  }

}