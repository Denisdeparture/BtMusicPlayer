

import 'Badges_Model.dart';
import 'CreatorSubscriptions_Model.dart';

class User {
  String? avatarUrl;
  String? city;
  int? commentsCount;
  String? countryCode;
  String? createdAt;
  List<CreatorSubscriptions>? creatorSubscriptions;
  CreatorSubscriptions? creatorSubscription;
  String? description;
  int? followersCount;
  int? followingsCount;
  String? firstName;
  String? fullName;
  int? groupsCount;
  int? id;
  String? kind;
  String? lastModified;
  String? lastName;
  int? likesCount;
  int? playlistLikesCount;
  String? permalink;
  String? permalinkUrl;
  int? playlistCount;
  int? repostsCount;
  int? trackCount;
  String? uri;
  String? urn;
  String? username;
  bool? verified;
  Object? visuals;
  Badges? badges;
  String? stationUrn;
  String? stationPermalink;

  User(
      {this.avatarUrl,
        this.city,
        this.commentsCount,
        this.countryCode,
        this.createdAt,
        this.creatorSubscriptions,
        this.creatorSubscription,
        this.description,
        this.followersCount,
        this.followingsCount,
        this.firstName,
        this.fullName,
        this.groupsCount,
        this.id,
        this.kind,
        this.lastModified,
        this.lastName,
        this.likesCount,
        this.playlistLikesCount,
        this.permalink,
        this.permalinkUrl,
        this.playlistCount,
        this.repostsCount,
        this.trackCount,
        this.uri,
        this.urn,
        this.username,
        this.verified,
        this.visuals,
        this.badges,
        this.stationUrn,
        this.stationPermalink});

  User.fromJson(Map<String, dynamic> json) {
    avatarUrl = json['avatar_url'];
    city = json['city'];
    commentsCount = json['comments_count'];
    countryCode = json['country_code'];
    createdAt = json['created_at'];
    if (json['creator_subscriptions'] != null) {
      creatorSubscriptions = <CreatorSubscriptions>[];
      json['creator_subscriptions'].forEach((v) {
        creatorSubscriptions!.add(new CreatorSubscriptions.fromJson(v));
      });
    }
    creatorSubscription = json['creator_subscription'] != null
        ? new CreatorSubscriptions.fromJson(json['creator_subscription'])
        : null;
    description = json['description'];
    followersCount = json['followers_count'];
    followingsCount = json['followings_count'];
    firstName = json['first_name'];
    fullName = json['full_name'];
    groupsCount = json['groups_count'];
    id = json['id'];
    kind = json['kind'];
    lastModified = json['last_modified'];
    lastName = json['last_name'];
    likesCount = json['likes_count'];
    playlistLikesCount = json['playlist_likes_count'];
    permalink = json['permalink'];
    permalinkUrl = json['permalink_url'];
    playlistCount = json['playlist_count'];
    repostsCount = json['reposts_count'];
    trackCount = json['track_count'];
    uri = json['uri'];
    urn = json['urn'];
    username = json['username'];
    verified = json['verified'];
    visuals = json['visuals'];
    badges =
    json['badges'] != null ? new Badges.fromJson(json['badges']) : null;
    stationUrn = json['station_urn'];
    stationPermalink = json['station_permalink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatar_url'] = this.avatarUrl;
    data['city'] = this.city;
    data['comments_count'] = this.commentsCount;
    data['country_code'] = this.countryCode;
    data['created_at'] = this.createdAt;
    if (this.creatorSubscriptions != null) {
      data['creator_subscriptions'] =
          this.creatorSubscriptions!.map((v) => v.toJson()).toList();
    }
    if (this.creatorSubscription != null) {
      data['creator_subscription'] = this.creatorSubscription!.toJson();
    }
    data['description'] = this.description;
    data['followers_count'] = this.followersCount;
    data['followings_count'] = this.followingsCount;
    data['first_name'] = this.firstName;
    data['full_name'] = this.fullName;
    data['groups_count'] = this.groupsCount;
    data['id'] = this.id;
    data['kind'] = this.kind;
    data['last_modified'] = this.lastModified;
    data['last_name'] = this.lastName;
    data['likes_count'] = this.likesCount;
    data['playlist_likes_count'] = this.playlistLikesCount;
    data['permalink'] = this.permalink;
    data['permalink_url'] = this.permalinkUrl;
    data['playlist_count'] = this.playlistCount;
    data['reposts_count'] = this.repostsCount;
    data['track_count'] = this.trackCount;
    data['uri'] = this.uri;
    data['urn'] = this.urn;
    data['username'] = this.username;
    data['verified'] = this.verified;
    data['visuals'] = this.visuals;
    if (this.badges != null) {
      data['badges'] = this.badges!.toJson();
    }
    data['station_urn'] = this.stationUrn;
    data['station_permalink'] = this.stationPermalink;
    return data;
  }
}
