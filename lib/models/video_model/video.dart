import 'package:final_app/models/video_model/video_type.dart';

class Video {
  VideoType large;
  VideoType medium;
  VideoType small;
  VideoType tiny;
  Video({
    required this.large,
    required this.medium,
    required this.small,
    required this.tiny,
  });
  factory Video.fromJson(Map json) {
    return Video(
        large: VideoType.fromJson(json['large']),
        medium: VideoType.fromJson(json['medium']),
        small: VideoType.fromJson(json['small']),
        tiny: VideoType.fromJson(json['tiny']));
  }
}
