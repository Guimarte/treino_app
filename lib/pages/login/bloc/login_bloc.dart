import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:treino_app/pages/login/bloc/login_event.dart';
import 'package:treino_app/pages/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginGoogleEvent>(_loginGoogle);
  }
  Future<UserCredential?> _loginGoogle(
      LoginGoogleEvent event, Emitter<LoginState> emitter) async {
    emitter(LoginLoadingState());
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      emitter(LoginSucessState());
      return userCredential;
    } catch (e) {
      emitter(LoginErrorState(error: e.toString()));
      return null;
    }
  }
}
