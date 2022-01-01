part of 'videos_cubit.dart';

abstract class VideosState extends Equatable {
  const VideosState();

  @override
  List<Object> get props => [];
}

class VideosInitial extends VideosState {}

class VideosLoading extends VideosState {
  final String message;
  VideosLoading({required this.message});
  List<Object> get props => [message];
}

class VideosError extends VideosState {
  final String errorMessage;
  VideosError({required this.errorMessage});
  List<Object> get props => [errorMessage];
}

class VideosSuccess extends VideosState {
  final List<VideoHit> data;
  final String? successMessage;
  VideosSuccess({required this.data, this.successMessage});
  List<Object> get props => [data];
}

// class VideosLoadmore extends VideosState {}
