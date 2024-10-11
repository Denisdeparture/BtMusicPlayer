import 'dart:convert';
import 'dart:io';
import 'package:btmusicappliction/Buisnes_Logic/Interfaces/IDownload.dart';
import 'package:btmusicappliction/Buisnes_Logic/Interfaces/ISearch.dart';
import 'package:btmusicappliction/Buisnes_Logic/JsonValidator.dart';
import 'package:btmusicappliction/Buisnes_Logic/SoundCloudConfigModel.dart';
import '../Models/JsonDesirializationModels/Model.dart';
import '../Models/JsonDesirializationModels/Transcodings_Model.dart';
import '../Models/JsonDesirializationModels/UrlToDownload.dart';

class SoundCloudClient implements IDownload, ISearch
{
  late SoundCloudConfig config;
  SoundCloudClient(this.config);
  @override
  Future<UrlToDownload> Download(Transcodings transcoding) async
  {
    if(transcoding.url == null || transcoding.url!.isEmpty) throw new Exception("url was null");
    var httpClient = new HttpClient();
    String token =  'Bearer ' + config.OAuthToken!;
    var uri = Uri.parse(transcoding.url!);
    var request = await httpClient.getUrl(uri);
    request.headers.set(HttpHeaders.acceptHeader, "application/json;charset=utf-8");
    request.headers.set(HttpHeaders.authorizationHeader, token as Object);
    HttpClientResponse response = await request.close();
    //if(response == null) throw new Exception("Responce was null");
    String? jsonAnswer = await JsonValidator.ParseJson(response);
    UrlToDownload model = UrlToDownload.fromJson(json.decode(jsonAnswer!));
    httpClient.close();
    return model;
  }
  ({String domen, String values, int port}) _ToUriModel(String parseUrl){
    String domen = "";
    String url = parseUrl;
    int counter = 0;
    String protocol = "https://";
    int port = 443;
    int? index;
    bool protocolVer = url.contains(protocol);
    if (protocolVer) {
      index = 8;
    } else {
      index = 7;
      protocol = "http://";
      port = 80;
    }
    while (domen.contains("/") == false) {
      domen += url[index + counter];
      counter++;
    }
    domen = domen.replaceAll("/", "");
    values() {
      String path1 = url.replaceAll(protocol, "");
      String path2 = path1.replaceAll(domen, "");
      return path2;
    }
    return (domen: domen, values:  values(), port: port);
  }
  @override
  Future<SearchModel> SearchTrack({required String nameOfTrack, int limit = 5}) async
  {
    var httpClient = new HttpClient();
    String token =  'Bearer ' + config.OAuthToken!;
    var uri = Uri.https(config.GetDomen(), '/search', {'q': '$nameOfTrack','limit': '$limit'});
    var request = await httpClient.getUrl(uri);
    request.headers.set(HttpHeaders.acceptHeader, "application/json;charset=utf-8");
    request.headers.set(HttpHeaders.authorizationHeader, token as Object);
    HttpClientResponse response = await request.close();
    httpClient.close();
  //  if(response == null) throw Exception("Response was null");
    String? jsonAnswer = await JsonValidator.ParseJson(response);
    SearchModel model = SearchModel.fromJson(json.decode(jsonAnswer!));
    return model;

  }
  @override
  Stream? GetStream(UrlToDownload model)
  {
    var httpClient = new HttpClient();
    HttpClientResponse? stream;
    httpClient.get(_ToUriModel(model.url!).domen, _ToUriModel(model.url!).port, _ToUriModel(model.url!).values).then((request) {
      request.headers.add("Accept", "application/json;charset=utf-8");
      request.headers.add("Authorization", config.OAuthToken as Object);
      request.close().then((val) {
        stream = val;
      });
      if(stream == null) throw new Exception("Stream or response was null");
      return stream;
    });
  }
//var request = new HttpRequestMessage(HttpMethod.Get, urlObj.url);
//request.Headers.Add("Accept", "application/json;charset=utf-8");
//request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", _SoundCloudConfiguration.OAuthToken);
//var response = await client.SendAsync(request);
//var stream = response.Content;
//if (stream is null) throw new NullReferenceException(nameof(stream));
//return stream;
}