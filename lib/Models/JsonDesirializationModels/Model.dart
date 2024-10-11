import 'Collection_Model.dart';

class SearchModel {
  List<Collection>? collection;
  int? totalResults;
  String? nextHref;
  String? queryUrn;

  SearchModel(
      {this.collection, this.totalResults, this.nextHref, this.queryUrn});

  SearchModel.fromJson(Map<String, dynamic> json) {
    if (json['collection'] != null) {
      collection = <Collection>[];
      json['collection'].forEach((v) {
        collection!.add(new Collection.fromJson(v));
      });
    }
    totalResults = json['total_results'];
    nextHref = json['next_href'];
    queryUrn = json['query_urn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.collection != null) {
      data['collection'] = this.collection!.map((v) => v.toJson()).toList();
    }
    data['total_results'] = this.totalResults;
    data['next_href'] = this.nextHref;
    data['query_urn'] = this.queryUrn;
    return data;
  }
}












