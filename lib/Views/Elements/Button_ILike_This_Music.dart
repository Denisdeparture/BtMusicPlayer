import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/material.dart';

class ButtonLike extends ButtonsInMyApp{
  ButtonLike(super.width, super.height);
  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset("assets/images/flag.png", width: width , height: height ));
  }
}