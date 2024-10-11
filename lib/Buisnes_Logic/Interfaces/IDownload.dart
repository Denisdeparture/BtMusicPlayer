

import '../../Models/JsonDesirializationModels/Transcodings_Model.dart';
import '../../Models/JsonDesirializationModels/UrlToDownload.dart';

mixin IDownload{
  Future<UrlToDownload> Download(Transcodings transcoding);
  Stream? GetStream(UrlToDownload model);
}