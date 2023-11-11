import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<String> signUp(
      String email, String password, String name, String phone) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty &&
          password.isNotEmpty &&
          name.isNotEmpty &&
          phone.isNotEmpty) {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection('Buyers').doc(user.user!.uid).set({
          'name': name,
          'email': email,
          'phone': phone,
          'buyserId': user.user!.uid,
          'address': ''
        });

        res = 'Success';
      } else {
        res = 'All fields are required';
      }
    } catch (e) {
      return e.toString();
    }

    return res;
  }

  loginUsers(String email, String password)async{
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty &&
          password.isNotEmpty) {
        UserCredential user = await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        res = 'Success';
      } else {
        res = 'All fields are required';
      }
    } catch (e) {
      return e.toString();
    }

    return res;
  }
}
