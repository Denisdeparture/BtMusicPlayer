

import '../../Models/JsonDesirializationModels/UrlToDownload.dart';

mixin IFileSystem
{
  void AddUseFFmpeg(UrlToDownload url, String name);
  void Delete(String name);
  void All();
  void Open(String name);
}