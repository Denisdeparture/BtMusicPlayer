import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';

class ButtonNextMusic extends ButtonsInMyApp{
  ButtonNextMusic(super.width, super.height);
  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset("assets/images/skip_next.png", width: width , height: height ));
  }

}