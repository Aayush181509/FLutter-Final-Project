import 'package:final_app/bloc/login/login_cubit.dart';
import 'package:final_app/models/user_model.dart';
import 'package:final_app/navigation/routes.dart';
import 'package:final_app/utils/assets.dart';
import 'package:final_app/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreenWidget1 extends StatefulWidget {
  const LoginScreenWidget1({Key? key}) : super(key: key);

  @override
  State<LoginScreenWidget1> createState() => _LoginScreenWidget1State();
}

class _LoginScreenWidget1State extends State<LoginScreenWidget1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  LoginCubit logincubit = LoginCubit();

  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: Text('Login'),
      //   leading: Icon(Icons.home),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.black87,
      //   elevation: 0,
      //   shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //   actions: [
      //     Icon(Icons.list_sharp),
      //     SizedBox(
      //       width: 25,
      //     )
      //   ],
      // ),
      body: BlocListener(
        bloc: logincubit,
        listener: (context, state) {
          if (state is LoginLoading) {
          } else if (state is LoginError) {
            Fluttertoast.showToast(msg: state.errorMessage);
          } else if (state is LoginSuccess) {
            Fluttertoast.showToast(msg: "Login Success! Welcome");
            Navigator.pushNamed(context, Routes.splashScreenPage);
          }
        },
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  // if (!isKeyboard)
                  Container(
                    height: 150.0,
                    width: 190.0,
                    padding: EdgeInsets.only(top: 40, bottom: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Center(
                      child: Image.asset(Assets.tiktokImage),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      onTap: () {
                        print('Hiiiii');
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'User Name',
                        hintText: 'Enter valid email id as a@mail.com',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Password',
                        hintText: 'Enter your password',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        print('Hi');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          logincubit.signInWithGoogle();
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              Image.asset(
                                Assets.googleImage,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "Google Sign-in",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.facebookImage,
                              height: 30,
                              width: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Facebook Sign-in",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        print('Hello');
                      },
                      child: Text('New User? Create Account'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
