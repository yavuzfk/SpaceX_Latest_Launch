

import 'package:spacex_latest_launch/models/get_model/links/links_classes/flickr.dart';
import 'package:spacex_latest_launch/models/get_model/links/links_classes/patch.dart';
import 'package:spacex_latest_launch/models/get_model/links/links_classes/reddit.dart';

class Links {
  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  String? presskit;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  Links(
      {this.patch,
        this.reddit,
        this.flickr,
        this.presskit,
        this.webcast,
        this.youtubeId,
        this.article,
        this.wikipedia});

  Links.fromJson(Map<String, dynamic> json) {
    patch = json['patch'] != null ?  Patch.fromJson(json['patch']) : null;
    reddit =
    json['reddit'] != null ?  Reddit.fromJson(json['reddit']) : null;
    flickr =
    json['flickr'] != null ?  Flickr.fromJson(json['flickr']) : null;
    presskit = json['presskit'];
    webcast = json['webcast'];
    youtubeId = json['youtube_id'];
    article = json['article'];
    wikipedia = json['wikipedia'];
  }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = <String, dynamic>{};
//   if (patch != null) {
//     data['patch'] = this.patch!.toJson();
//   }
//   if (reddit != null) {
//     data['reddit'] = this.reddit!.toJson();
//   }
//   if (flickr != null) {
//     data['flickr'] = flickr!.toJson();
//   }
//   data['presskit'] = presskit;
//   data['webcast'] = webcast;
//   data['youtube_id'] = youtubeId;
//   data['article'] = article;
//   data['wikipedia'] = wikipedia;
//   return data;
// }
}