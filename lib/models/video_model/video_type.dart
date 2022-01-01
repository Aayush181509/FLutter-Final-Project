class VideoType {
  String url;
  int width;
  int height;
  int size;
  VideoType({
    required this.url,
    required this.width,
    required this.height,
    required this.size,
  });
  factory VideoType.fromJson(Map json) {
    return VideoType(
      url: json['url'] ?? "",
      width: json['width'] ?? -1,
      height: json['height'] ?? -1,
      size: json['size'] ?? -1,
    );
  }
}
