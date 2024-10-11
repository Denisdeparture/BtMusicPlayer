import 'package:just_audio/just_audio.dart';

class AudioPlayerApi{
  late AudioPlayer player;
  late String _current;

  Duration PositionTrack = Duration.zero;
  Duration DurationTrack = Duration.zero;
  String get CurrentFilePath => _current;
  Future<int> Max() async{
    var dur = await player.setFilePath(_current);
    return dur!.inSeconds;
  }
  set CurrentFilePath(String value) {
    _current = value;
    player.setFilePath(value);
  }
  AudioPlayerApi.create(){
    player = new AudioPlayer();
  }
  AudioPlayerApi(String startPath)
  {
    player = new AudioPlayer();
    player.setFilePath(startPath);
  }
  void Pause(){
    player.pause();
  }
  void OnClickButtonPlay(){
    if(player.playing ){
      player.pause();
    }
    else{
      player.play();
    }
  }
  void InitPosition(){
    player.positionStream.listen((p){
      PositionTrack = p;
    });
    player.durationStream.listen((d){
      DurationTrack = d!;
    });
  }
  void OnHandleSeek(double value){
    Duration durValue = new Duration(seconds: value.toInt());
    player.seek(durValue);
  }
}