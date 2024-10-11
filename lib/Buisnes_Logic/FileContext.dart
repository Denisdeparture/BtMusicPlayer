import 'dart:io';
import 'package:btmusicappliction/Buisnes_Logic/Interfaces/IFileSystem.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import '../Models/JsonDesirializationModels/UrlToDownload.dart';
import 'dart:developer' as developer;
class FileContext implements IFileSystem{
  String _pathGet = "";
  set path(String value) {
    var dir = Directory(value);
    if(dir.existsSync() == false){
      dir.create();
    }
    _pathGet = value;
  }
  FileContext.create();
  FileContext(this._pathGet);


  @override
  void AddUseFFmpeg(UrlToDownload url, String name) async
  {
     String newPath = "$_pathGet/$name.mp3";
     if(File(newPath).existsSync()) throw  Exception("File just exists");
     String? uri = url.url;
     String command = "-i \"$uri\" -c copy -f mp3 \"$newPath\" ";
     final session = await FFmpegKit.execute(command);
     final returnCode = await session.getReturnCode();
     final code = returnCode!.getValue();
     if(returnCode.isValueSuccess() == false) {
       String? errors = await session.getAllLogsAsString();
       developer.log(errors ?? "It`s not erorr");
       throw new Exception("$code ");
     }
  }
  @override
  List<FileSystemEntity> All()  {
    Directory directory = Directory(_pathGet);
    return directory.listSync();
  }

  @override
  void Delete(String name) {
     var file = new File(_pathGet + name);
     if(file.existsSync()) file.deleteSync();
  }

  @override
  void Open(String name) {
    var file = new File(_pathGet + name);

  }

}