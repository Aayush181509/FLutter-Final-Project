import 'package:final_app/bloc/videos/videos_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  _TestingWidgetState createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  VideosCubit n = VideosCubit();
  @override
  void initState() {
    super.initState();
    print('This is the init state being called');
    n.getVideosFromServer();
  }

  @override
  void dispose() {
    super.dispose();
    print('This is the dispose function being called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<VideosCubit, VideosState>(
      bloc: n,
      listener: (context, state) {
        setState(() {});
      },
      builder: (context, state) {
        if (state is VideosLoading) {
          // ignore: prefer_const_constructors
          return Center(child: CircularProgressIndicator());
        }
        if (state is VideosError) {
          return Text(state.errorMessage);
        }
        if (state is VideosSuccess) {
          print(state.data.length);
          print(state.data[0].totalHits);
          return Center(child: Text('Successfully fetched'));
        }
        return Container();
      },
    ));
  }
}
