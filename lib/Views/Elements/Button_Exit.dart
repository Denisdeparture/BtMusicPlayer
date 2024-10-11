import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonExit extends  ButtonsInMyApp{
  Widget pageToGo;
  Function? onPressed;
  ButtonExit(super.width, super.height, this.pageToGo, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset("assets/images/exit_to_app.png", width: width , height: height ),
      iconSize: 50,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => pageToGo));
        if(onPressed != null) {
          onPressed!();
        }
      },
    );
  }
}