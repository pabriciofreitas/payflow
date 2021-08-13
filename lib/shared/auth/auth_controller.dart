import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/user_model.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  get toJson => null;

  Future<void> setUser(BuildContext context, UserModel? user) async {
    if (user != null) {
      saveUser(user);
      _user = user;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      final instance = await SharedPreferences.getInstance();
      instance.remove("user");
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString("user", user.toJson());
    return;
  }

  // vai verificar se há algumm usuario logado
  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    if (instance.containsKey("user")) {
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
// Navigator.pushReplacement(
  //        context, MaterialPageRoute(builder: (context) => HomePage()));