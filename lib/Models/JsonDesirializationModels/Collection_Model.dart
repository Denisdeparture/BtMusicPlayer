import 'Media_Model.dart';
import 'User_Model.dart';

class Collection {
  String? artworkUrl;
  Object? caption;
  bool? commentable;
  int? commentCount;
  String? createdAt;
  String? description;
  bool? downloadable;
  int? downloadCount;
  int? duration;
  int? fullDuration;
  String? embeddableBy;
  String? genre;
  bool? hasDownloadsLeft;
  int? id;
  String? kind;
  String? labelName;
  String? lastModified;
  String? license;
  int? likesCount;
  String? permalink;
  String? permalinkUrl;
  int? playbackCount;
  bool? public;
  Object? publisherMetadata;
  Object? purchaseTitle;
  Object? purchaseUrl;
  Object? releaseDate;
  int? repostsCount;
  Object? secretToken;
  String? sharing;
  String? state;
  bool? streamable;
  String? tagList;
  String? title;
  String? uri;
  String? urn;
  int? userId;
  Object? visuals;
  String? waveformUrl;
  String? displayDate;
  Media? media;
  String? stationUrn;
  String? stationPermalink;
  String? trackAuthorization;
  String? monetizationModel;
  String? policy;
  User? user;

  Collection(
      {this.artworkUrl,
        this.caption,
        this.commentable,
        this.commentCount,
        this.createdAt,
        this.description,
        this.downloadable,
        this.downloadCount,
        this.duration,
        this.fullDuration,
        this.embeddableBy,
        this.genre,
        this.hasDownloadsLeft,
        this.id,
        this.kind,
        this.labelName,
        this.lastModified,
        this.license,
        this.likesCount,
        this.permalink,
        this.permalinkUrl,
        this.playbackCount,
        this.public,
        this.publisherMetadata,
        this.purchaseTitle,
        this.purchaseUrl,
        this.releaseDate,
        this.repostsCount,
        this.secretToken,
        this.sharing,
        this.state,
        this.streamable,
        this.tagList,
        this.title,
        this.uri,
        this.urn,
        this.userId,
        this.visuals,
        this.waveformUrl,
        this.displayDate,
        this.media,
        this.stationUrn,
        this.stationPermalink,
        this.trackAuthorization,
        this.monetizationModel,
        this.policy,
        this.user});

  Collection.fromJson(Map<String, dynamic> json) {
    artworkUrl = json['artwork_url'];
    caption = json['caption'];
    commentable = json['commentable'];
    commentCount = json['comment_count'];
    createdAt = json['created_at'];
    description = json['description'];
    downloadable = json['downloadable'];
    downloadCount = json['download_count'];
    duration = json['duration'];
    fullDuration = json['full_duration'];
    embeddableBy = json['embeddable_by'];
    genre = json['genre'];
    hasDownloadsLeft = json['has_downloads_left'];
    id = json['id'];
    kind = json['kind'];
    labelName = json['label_name'];
    lastModified = json['last_modified'];
    license = json['license'];
    likesCount = json['likes_count'];
    permalink = json['permalink'];
    permalinkUrl = json['permalink_url'];
    playbackCount = json['playback_count'];
    public = json['public'];
    publisherMetadata = json['publisher_metadata'];
    purchaseTitle = json['purchase_title'];
    purchaseUrl = json['purchase_url'];
    releaseDate = json['release_date'];
    repostsCount = json['reposts_count'];
    secretToken = json['secret_token'];
    sharing = json['sharing'];
    state = json['state'];
    streamable = json['streamable'];
    tagList = json['tag_list'];
    title = json['title'];
    uri = json['uri'];
    urn = json['urn'];
    userId = json['user_id'];
    visuals = json['visuals'];
    waveformUrl = json['waveform_url'];
    displayDate = json['display_date'];
    media = json['media'] != null ? new Media.fromJson(json['media']) : null;
    stationUrn = json['station_urn'];
    stationPermalink = json['station_permalink'];
    trackAuthorization = json['track_authorization'];
    monetizationModel = json['monetization_model'];
    policy = json['policy'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artwork_url'] = this.artworkUrl;
    data['caption'] = this.caption;
    data['commentable'] = this.commentable;
    data['comment_count'] = this.commentCount;
    data['created_at'] = this.createdAt;
    data['description'] = this.description;
    data['downloadable'] = this.downloadable;
    data['download_count'] = this.downloadCount;
    data['duration'] = this.duration;
    data['full_duration'] = this.fullDuration;
    data['embeddable_by'] = this.embeddableBy;
    data['genre'] = this.genre;
    data['has_downloads_left'] = this.hasDownloadsLeft;
    data['id'] = this.id;
    data['kind'] = this.kind;
    data['label_name'] = this.labelName;
    data['last_modified'] = this.lastModified;
    data['license'] = this.license;
    data['likes_count'] = this.likesCount;
    data['permalink'] = this.permalink;
    data['permalink_url'] = this.permalinkUrl;
    data['playback_count'] = this.playbackCount;
    data['public'] = this.public;
    data['publisher_metadata'] = this.publisherMetadata;
    data['purchase_title'] = this.purchaseTitle;
    data['purchase_url'] = this.purchaseUrl;
    data['release_date'] = this.releaseDate;
    data['reposts_count'] = this.repostsCount;
    data['secret_token'] = this.secretToken;
    data['sharing'] = this.sharing;
    data['state'] = this.state;
    data['streamable'] = this.streamable;
    data['tag_list'] = this.tagList;
    data['title'] = this.title;
    data['uri'] = this.uri;
    data['urn'] = this.urn;
    data['user_id'] = this.userId;
    data['visuals'] = this.visuals;
    data['waveform_url'] = this.waveformUrl;
    data['display_date'] = this.displayDate;
    if (this.media != null) {
      data['media'] = this.media!.toJson();
    }
    data['station_urn'] = this.stationUrn;
    data['station_permalink'] = this.stationPermalink;
    data['track_authorization'] = this.trackAuthorization;
    data['monetization_model'] = this.monetizationModel;
    data['policy'] = this.policy;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}