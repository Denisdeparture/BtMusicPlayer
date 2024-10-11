import 'dart:io';
import 'package:btmusicappliction/Buisnes_Logic/SoundCloudConfigModel.dart';
import '../../Models/JsonDesirializationModels/Model.dart';


mixin ISearch{
   Future<SearchModel> SearchTrack({required String nameOfTrack, int limit = 5});
}