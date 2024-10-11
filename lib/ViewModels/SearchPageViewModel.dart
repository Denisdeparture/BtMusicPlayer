import 'package:btmusicappliction/Buisnes_Logic/SoundCloudClient.dart';
import 'package:btmusicappliction/Views/Pages/Search_Page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../main.dart';

class SearchPageController extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final client = ref.watch(soundCloudClient);
     return SearchPage(client);
  }

}