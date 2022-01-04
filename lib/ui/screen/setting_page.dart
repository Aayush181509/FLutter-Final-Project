import 'package:final_app/bloc/login/login_cubit.dart';
import 'package:final_app/models/login_model/user_model.dart';
import 'package:final_app/navigation/routes.dart';
import 'package:final_app/ui/widgets/login_screen_widget1.dart';
import 'package:final_app/ui/widgets/tiktok_ui_widgets.dart/buttom_toolbar.dart';
import 'package:final_app/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  LoginCubit signedOut = LoginCubit();
  Widget userField(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget headingField(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  UserModel? userInfo;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
  }

  getUser() async {
    userInfo = await SharedPref.getUserData();
    if (userInfo != null) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue,
                      // borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 225),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            image: DecorationImage(
                              image: NetworkImage(userInfo?.photoUrl ??
                                  'https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(75),
                            // color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          // height: 150,
                          // width: 150,
                          child: Column(
                            children: [
                              Text(
                                userInfo?.displayName ?? 'User',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                userInfo?.email ?? 'user',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // alignment: Alignment.topLeft,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingField('Account'),
                    Divider(
                      thickness: 2,
                    ),
                    userField('Profile'),
                    userField('Subscriptions'),
                    userField('My Contributions'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // alignment: Alignment.topLeft,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingField('General'),
                    Divider(
                      thickness: 2,
                    ),
                    userField('Notifications'),
                    userField('Dark Mode'),
                    userField('Introduction Sound'),
                    userField('Auto Play Videos'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // alignment: Alignment.topLeft,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingField('Preferences'),
                    Divider(
                      thickness: 2,
                    ),
                    userField('Language'),
                    userField('Font Size'),
                    userField('Horoscope'),
                    userField('Forex'),
                    userField('Jobs'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // alignment: Alignment.topLeft,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingField('Feedback'),
                    Divider(
                      thickness: 2,
                    ),
                    userField('Rate Us on PlayStore'),
                    userField('Invite your Friends'),
                    userField('Contact Information'),
                    userField('Terms and Conditions'),
                    userField('Privacy Policy'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // alignment: Alignment.topLeft,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocListener(
                      bloc: signedOut,
                      listener: (context, state) {
                        if (state is SignedOut) {
                          Fluttertoast.showToast(msg: "Logged Out");
                          Navigator.pushNamed(context, Routes.loginPage);
                        }
                      },
                      child: InkWell(
                        onTap: () {
                          signedOut.signOutFromGoogle();
                        },
                        child: userField('Logout'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ButtomToolbar(),
    );
  }
}
