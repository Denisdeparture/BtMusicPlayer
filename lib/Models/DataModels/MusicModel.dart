import 'package:btmusicappliction/Models/JsonDesirializationModels/Collection_Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class MusicModelNotifier extends StateNotifier<Collection>{
  MusicModelNotifier(super.state);
  void Update(Collection model){
    state = model;
  }
}