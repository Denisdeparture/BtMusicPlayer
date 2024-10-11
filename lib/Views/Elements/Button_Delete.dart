import 'package:btmusicappliction/Views/Elements/ButtonsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Buisnes_Logic/FileContext.dart';

class ButtonDelete extends ButtonsInMyApp{
  String path;
  ButtonDelete(super.width, super.height, this.path);
  @override
  Widget build(BuildContext context) {
    FileContext fileContext = FileContext.create();
    return IconButton(onPressed: () {
      fileContext.Delete(path);
    },icon: Image.asset("assets/images/delete_button.png", width: width , height: height ));
  }

}