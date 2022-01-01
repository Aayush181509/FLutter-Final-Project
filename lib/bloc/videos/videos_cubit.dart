// import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:final_app/models/video_model/video_data.dart';
part 'videos_state.dart';

class VideosCubit extends Cubit<VideosState> {
  VideosCubit() : super(VideosInitial());
  getVideosFromServer() async {
    emit(VideosLoading(message: 'Loading'));
    final url =
        "https://pixabay.com/api/videos/?key=24747073-90cabfd95266df4486476df9e&q=yellow+flowers&pretty=true";
    try {
      final result = await Dio().get(url);
      print('This is our data from server');
      print(result.statusCode);
      var videos = (result.data['hits'] as List).map<VideoData>((item) {
        VideoData nVideos = VideoData.fromJson(item);
        return nVideos;
      }).toList();
      if (videos.isEmpty) {
        emit(VideosError(errorMessage: 'Sorry Posts could be loaded'));
      } else {
        emit(VideosSuccess(data: videos));
      }
    } catch (e, s) {
      print(e.toString());
      print(s.toString());
      emit(VideosError(errorMessage: e.toString()));
    }
  }
}
