import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:final_app/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:final_app/models/user_model.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  signInWithGoogle() async {
    emit(LoginLoading(message: "Loading"));
    try {
      final googleSignIn = await GoogleSignIn().signOut();

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);
      UserModel? user;
      if (googleUser != null) {
        user = UserModel(email: googleUser.email, id: googleUser.id);
      }
    } catch (e, s) {
      print(s.toString());
    }
  }
}
