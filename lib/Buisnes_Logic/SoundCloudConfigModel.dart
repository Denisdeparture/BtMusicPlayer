class SoundCloudConfig
{
   String? OAuthToken;
   String? Protocol;
   String? ApiVersion;
   String? Domen;
   String DomenRegion;
   // https://api-v2.soundcloud.com/search?q=hello&limit=2
   SoundCloudConfig({ required this.OAuthToken, this.ApiVersion = "api-v2", this.Domen = "soundcloud", this.DomenRegion = "com",  this.Protocol= "https"});
   String GetUrl() {
       return "$Protocol://$ApiVersion.$Domen.$DomenRegion/";
   }
   String GetDomen(){
       return "$ApiVersion.$Domen.$DomenRegion";
   }
}