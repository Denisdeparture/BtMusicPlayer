import 'dart:async';
import 'dart:io';
import 'package:btmusicappliction/Buisnes_Logic/AudioPlayerApi.dart';
import 'package:btmusicappliction/Buisnes_Logic/FileContext.dart';
import 'package:btmusicappliction/Buisnes_Logic/SoundCloudClient.dart';
import 'package:btmusicappliction/Buisnes_Logic/SoundCloudConfigModel.dart';
import 'package:btmusicappliction/Models/DataModels/MusicModel.dart';
import 'package:btmusicappliction/Models/JsonDesirializationModels/Collection_Model.dart';
import 'package:btmusicappliction/ViewModels/MainPageViewModel.dart';
import 'package:btmusicappliction/ViewModels/MusicControlPageViewModel.dart';
import 'package:btmusicappliction/ViewModels/SearchPageViewModel.dart';
import 'package:btmusicappliction/Views/Elements/Music_View.dart';
import 'package:btmusicappliction/Views/Pages/Favorite_Music_Page.dart';
import 'package:btmusicappliction/Views/Pages/Music_Control_Page.dart';
import 'package:btmusicappliction/Views/Pages/Search_Results_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod/src/framework.dart';

//final musicProvider = StateNotifierProvider<MusicModelNotifier, Collection>((ref) => MusicModelNotifier(Collection(title: "hdh")));
final soundCloudClient = Provider<SoundCloudClient>((ref) => SoundCloudClient(SoundCloudConfig(OAuthToken: "your oauth-token")));
final audioPlayerClient = Provider<AudioPlayer>((ref) => AudioPlayer());
void main() {
  const app = ProviderScope(child: MyApp());
  runApp(app);
}
class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MainPageController(),
        "/search": (context) => SearchPageController(),
        "/results": (context) => SearchResultPage(),
        "/music": (context) => MusicController()
      },
    );
  }
}
