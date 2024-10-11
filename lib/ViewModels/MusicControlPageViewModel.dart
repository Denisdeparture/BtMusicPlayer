import 'package:btmusicappliction/Views/Pages/Music_Control_Page.dart';
import 'package:btmusicappliction/main.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MusicController extends ConsumerWidget{
  String? music;
  MusicController({this.music});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(audioPlayerClient);
    return MusicPage(player: client, music: music);
  }

}