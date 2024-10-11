class Badges {
  bool? pro;
  bool? creatorMidTier;
  bool? proUnlimited;
  bool? verified;

  Badges({this.pro, this.creatorMidTier, this.proUnlimited, this.verified});

  Badges.fromJson(Map<String, dynamic> json) {
    pro = json['pro'];
    creatorMidTier = json['creator_mid_tier'];
    proUnlimited = json['pro_unlimited'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pro'] = this.pro;
    data['creator_mid_tier'] = this.creatorMidTier;
    data['pro_unlimited'] = this.proUnlimited;
    data['verified'] = this.verified;
    return data;
  }
}