import 'package:flutter/material.dart';
import 'package:ppayflow/shared/auth/auth_controller.dart';
import 'package:ppayflow/shared/themes/app_colors.dart';
import 'package:ppayflow/shared/themes/app_images.dart';
import 'package:ppayflow/shared/themes/app_text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /*
  void initState() {
    super.initState();
    

    Timer(
        Duration(seconds: 5),
        () => {
              //Navigator.restorablePushNamed(context, "/login")
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => LoginPage()))
            });
  } */

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        //alignment: AlignmentDirectional.center,
        children: [
          Center(child: Image(image: AssetImage(AppImages.union))),
          Center(child: Image(image: AssetImage(AppImages.logoFull))),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 260),
              child: CircularProgressIndicator(
                //backgroundColor: AppColors.primary,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                strokeWidth: 3,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Text(
                "Bem vindo ao PayFlow",
                style: AppTextStyles.buttonBoldGray,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
