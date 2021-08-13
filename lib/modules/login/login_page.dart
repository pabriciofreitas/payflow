import 'package:flutter/material.dart';
import 'package:ppayflow/modules/login/login_controller.dart';
import 'package:ppayflow/shared/themes/app_colors.dart';
import 'package:ppayflow/shared/themes/app_images.dart';
import 'package:ppayflow/shared/themes/app_text_styles.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:ppayflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    //Pegando tamanho da tela
    final size = MediaQuery.of(context).size;
    /*final tamanho = size.toString();
    for (int i = 0; i <= tamanho.length; i++) {
      print(tamanho[i]);
    }
    */
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          //alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
                left: 0,
                right: 0,
                top: size.height * 0.045,
                child: Image.asset(AppImages.person,
                    width: size.width * 0.554, height: size.height * 0.459)),
            Positioned(
              left: 0,
              right: 0,
              //alinhando o logoMini com base na parte inferior do projeto bottom(Inferior)
              bottom: size.height * 0.05,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini,
                      width: size.width * 0.1781, height: size.height * 0.0709),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, top: 15),
                    child: Center(
                      child: Text(
                        "Organize seus boletos em um só lugar",
                        style: AppTextStyles.titleHome,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsetsDirectional.only(top: size.height * 0.0492),
                      child: SocialLoginButton(
                        onTap: () {
                          controller.googleSignIn(context);
                          //Navigator.pushNamed(context, "/home");
                        },
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
                            /*
                            fontStyle: GoogleFonts.lexendDeca(),
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: AppColors.heading)
                            */