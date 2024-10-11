class Format {
  String? protocol;
  String? mimeType;

  Format({this.protocol, this.mimeType});

  Format.fromJson(Map<String, dynamic> json) {
    protocol = json['protocol'];
    mimeType = json['mime_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['protocol'] = this.protocol;
    data['mime_type'] = this.mimeType;
    return data;
  }
}