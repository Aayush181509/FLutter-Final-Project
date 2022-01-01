// import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:final_app/models/video_model/video_data.dart';
import 'package:final_app/models/video_model/video_hit.dart';
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
      print(result.data);
      var videos = (result.data['hits'] as List).map<VideoHit>((item) {
        VideoHit nVideos = VideoHit.fromJson(item);
        return nVideos;
      }).toList();
      if (videos.isEmpty) {
        emit(VideosError(errorMessage: 'Sorry Posts could be loaded'));
      } else {
        emit(VideosSuccess(data: videos, successMessage: 'SUccessss'));
      }
    } catch (e, s) {
      print(e.toString());
      print(s.toString());
      emit(VideosError(errorMessage: e.toString()));
    }
  }
}
