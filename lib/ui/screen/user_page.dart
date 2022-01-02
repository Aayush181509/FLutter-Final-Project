import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  static const double ActionWidgetSize = 80.0;

// The size of the icon showen for Social Actions
  static const double ActionIconSize = 55.0;

// The size of the share social icon
  static const double ShareActionIconSize = 45.0;

// The size of the profile image in the follow Action
  static const double ProfileImageSize = 70.0;

// The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 20.0;

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
      child: Container(
          width: PlusIconSize, // PlusIconSize = 20.0;
          height: PlusIconSize, // PlusIconSize = 20.0;
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 43, 84),
              borderRadius: BorderRadius.circular(15.0)),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 20.0,
          )),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
        left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
        child: Container(
          padding:
              EdgeInsets.all(1.0), // Add 1.0 point padding to create border
          height: ProfileImageSize, // ProfileImageSize = 50.0;
          width: ProfileImageSize, // ProfileImageSize = 50.0;
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
          // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
          child: CachedNetworkImage(
            imageUrl:
                "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        ));
  }

  Widget _getSocialAction({String? title, IconData? icon, bool? isShare}) {
    return Container(
        margin: EdgeInsets.only(top: 15.0),
        width: 80.0,
        height: 80.0,
        child: Column(children: [
          Icon(icon,
              size: isShare ?? false ? 30 : 35.0, color: Colors.grey[300]),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(title.toString(), style: TextStyle(fontSize: 12.0)),
          )
        ]));
  }

  Widget _getFollowAction({String? pictureUrl}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 80,
      height: 80,
      child: Stack(
        children: [
          _getProfilePicture(),
          _getPlusIcon(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person_add_alt_sharp),
        elevation: 0,
        title: Text('Aayush_8131'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(Icons.calendar_today_outlined),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.list),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: _getFollowAction(),
          ),
        ],
      ),
    );
  }
}
