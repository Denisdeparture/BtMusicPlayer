import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';

class ButtonSettings extends ButtonsInMyApp{
  ButtonSettings(super.width, super.height);
  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset("assets/images/settings.png", height: height, width: width,));
  }

}