import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ppayflow/shared/auth/auth_controller.dart';
import 'package:ppayflow/shared/auth/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        photoURL: response.photoUrl,
      );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      authController.setUser(context, null);

      print(error);
    }
  }

  static final googleSingIn = GoogleSignIn();
  Future<void> logout(BuildContext context) async {
    googleSingIn.signOut();
    //googleSingIn.disconnect();
    // quando uso esse não da erro mais esse é o certo// vi que ele funciona só se for chamadp direto na tela de home _googleSingIn.disconnect();
    authController.setUser(context, null);
    //Navigator.pop(context);
  }
}
