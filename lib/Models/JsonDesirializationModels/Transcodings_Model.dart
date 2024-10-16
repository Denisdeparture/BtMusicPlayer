import 'Format_Model.dart';

class Transcodings {
  String? url;
  String? preset;
  int? duration;
  bool? snipped;
  Format? format;
  String? quality;

  Transcodings(
      {this.url,
        this.preset,
        this.duration,
        this.snipped,
        this.format,
        this.quality});

  Transcodings.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    preset = json['preset'];
    duration = json['duration'];
    snipped = json['snipped'];
    format =
    json['format'] != null ? new Format.fromJson(json['format']) : null;
    quality = json['quality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['preset'] = this.preset;
    data['duration'] = this.duration;
    data['snipped'] = this.snipped;
    if (this.format != null) {
      data['format'] = this.format!.toJson();
    }
    data['quality'] = this.quality;
    return data;
  }
}