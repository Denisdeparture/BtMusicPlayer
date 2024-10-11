import 'Transcodings_Model.dart';

class Media {
  List<Transcodings>? transcodings;

  Media({this.transcodings});

  Media.fromJson(Map<String, dynamic> json) {
    if (json['transcodings'] != null) {
      transcodings = <Transcodings>[];
      json['transcodings'].forEach((v) {
        transcodings!.add(new Transcodings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.transcodings != null) {
      data['transcodings'] = this.transcodings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}