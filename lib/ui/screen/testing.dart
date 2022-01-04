import 'dart:math';

import 'package:final_app/bloc/videos/videos_cubit.dart';
import 'package:final_app/ui/screen/tiktok_ui_screen.dart';
import 'package:final_app/ui/screen/video_player_test.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widget.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/buttom_toolbar.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/top_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  _TestingWidgetState createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  PageController pageController = PageController();
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
      backgroundColor: Colors.black,
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
            print(state.errorMessage);
            return Text(state.errorMessage);
          }
          if (state is VideosSuccess) {
            return Column(
              children: [
                TopSection(),
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.vertical,
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      final _currentPost = state.data[index];
                      print(index.toString());
                      print(_currentPost.videos.small.url);
                      return TiktokUiWidget(video: _currentPost);
                      // return VideoApp(video: _currentPost);
                    },
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
      bottomNavigationBar: ButtomToolbar(),
    );
  }
}
