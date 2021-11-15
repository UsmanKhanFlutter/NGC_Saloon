import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SocialLogin {
  SharedPreferences? sharedPrefs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User? user;

  Future<String?> signInwithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      user = FirebaseAuth.instance.currentUser;

      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      rethrow;
    }
  }
}
