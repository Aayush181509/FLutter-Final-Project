import 'package:final_app/models/video_model/video.dart';
import 'package:final_app/models/video_model/video_hit.dart';

class VideoData {
  int total;
  int totalHits;
  List<VideoHit> hits;
  VideoData({
    required this.total,
    required this.totalHits,
    required this.hits,
  });
  factory VideoData.fromJson(Map json) {
    return VideoData(
      total: json['total'] ?? -1,
      totalHits: json['totalHits'] ?? -1,
      hits: json['hits'] == null
          ? []
          : (json['hits'] as List).map<VideoHit>((e) {
              final hit = VideoHit.fromJson(e);
              return hit;
            }).toList(),
    );
  }
}
