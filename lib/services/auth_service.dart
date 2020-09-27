import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  static AuthService instance = AuthService();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User> singInWithGoogle() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      idToken: gSA.idToken,
      accessToken: gSA.accessToken,
    );

    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    User user = userCredential.user;
    if (user != null) {
      return user;
    } else {
      return null;
    }
  }

  Future signOut() async {
    await googleSignIn.signOut().whenComplete(() async {
      //Delete user uid from app
    });
  }
}
