import 'package:firebase_auth/firebase_auth.dart';
import 'package:heiko_flashcard/exceptions/auth/register_exception.dart';
import 'package:heiko_flashcard/exceptions/auth/login_exception.dart';
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> registerWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch  (e) {
      throw new RegisterException(e.code);
    }
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (result.user != null) {
        print(result.user!.email);
      }
      return result.user;
    } catch  (e) {
      throw new LoginException(e.toString());
    }
  }
}
