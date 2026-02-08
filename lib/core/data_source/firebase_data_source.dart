// Karim Toson || kareemtoson1@gmail.com || Sat Feb 07 2026 17:51:11

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_10/features/auth/models/user_model.dart';

class FireBaseDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  //sign up
  Future<void> signUp(String email, String password, String name) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      await _firebaseFirestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(
            UserModel(
              email: email,
              name: name,
              password: password,
              fev: [],
            ).toJoson(),
          );
    } catch (e) {
      print(e);
    }
  }

  //login
  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
