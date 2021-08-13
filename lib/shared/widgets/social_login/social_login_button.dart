import 'package:flutter/material.dart';
import 'package:ppayflow/shared/themes/app_colors.dart';
import 'package:ppayflow/shared/themes/app_images.dart';
import 'package:ppayflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback
      onTap; // Criou um função chmada coidcall back(Retorno de chamada nula)
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    // para colocar clic no nosso button usamos o Inkwwell aonde possamos passa on tap
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 56,
        width: 295,
        // Uma caixa para vc decorar
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(
              color: AppColors
                  .stroke, // width: 20, caso queira mexer no tamanho da borda
            ))),
        child: Row(children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 17,
              ),
              child: Image.asset(AppImages.google),
            ),
            Container(
              height: 56,
              width: 1,
              color: AppColors.stroke, // width: 20, caso queira mexer no t
            )
          ]),
          Container(
            padding: EdgeInsets.only(left: 17),
            child: Text(
              "Entrar com o Google",
              style: AppTextStyles.buttonBoldGray,
            ),
          ),
        ]),
      ),
    );
  }
}
