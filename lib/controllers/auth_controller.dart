import 'dart:developer';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class AuthController {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

  pickProfileImage(ImageSource source) async {
    final _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      return await pickedFile.readAsBytes();
    } else {
      log('erroe');
    }
  }

  uploadProfileImageToStorage<String>(dynamic image) async {
    TaskSnapshot taskSnapshot = await _storage
        .ref()
        .child('Profile Pics')
        .child(_auth.currentUser!.uid)
        .putData(image);
    return await taskSnapshot.ref.getDownloadURL();
  }

  Future<String> signUp(String email, String password, String name,
      String phone, dynamic image) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty &&
          password.isNotEmpty &&
          name.isNotEmpty &&
          phone.isNotEmpty &&
          image.isNotEmpty) {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        String profileImageUrl = await uploadProfileImageToStorage(image);

        await _firestore.collection('Buyers').doc(user.user!.uid).set({
          'name': name,
          'email': email,
          'phone': phone,
          'buyserId': user.user!.uid,
          'address': '',
          'profileImage': profileImageUrl
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

  loginUsers(String email, String password) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
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
