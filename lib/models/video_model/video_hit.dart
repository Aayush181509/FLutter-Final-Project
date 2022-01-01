import 'package:final_app/models/video_model/video.dart';

class VideoHit {
  int id;
  String pageURL;
  String type;
  String tags;
  int duration;
  String picture_id;
  int views;
  int downloads;
  int likes;
  int comments;
  int user_id;
  String user;
  String userImageURL;
  Video videos;
  VideoHit(
      {required this.id,
      required this.pageURL,
      required this.type,
      required this.tags,
      required this.duration,
      required this.picture_id,
      required this.videos,
      required this.views,
      required this.downloads,
      required this.likes,
      required this.comments,
      required this.user_id,
      required this.user,
      required this.userImageURL});

  factory VideoHit.fromJson(Map json) {
    return VideoHit(
      id: json['id'] ?? -1,
      pageURL: json['pageURL'] ?? "",
      type: json['type'] ?? "",
      tags: json['tags'] ?? "",
      duration: json['duration'] ?? -1,
      picture_id: json['picture_id'] ?? "",
      videos: Video.fromJson(json['videos']),
      views: json['views'] ?? -1,
      downloads: json['downloads'] ?? -1,
      likes: json['likes'] ?? -1,
      comments: json['comments'] ?? -1,
      user_id: json['user_id'] ?? -1,
      user: json['user'] ?? "",
      userImageURL: json['userImageURL'] ?? "",
    );
  }
}
