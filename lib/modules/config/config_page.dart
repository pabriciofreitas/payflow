import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppayflow/modules/login/login_controller.dart';
import 'package:ppayflow/shared/themes/app_colors.dart';
import 'package:ppayflow/shared/themes/app_text_styles.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loginController = LoginController();
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.1),
          child: Center(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              alignment: AlignmentDirectional.centerEnd,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/home");
                },
                icon: Icon(
                  Icons.close,
                  color: AppColors.heading,
                  size: 50,
                ),
              ),
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              await loginController.logout(context);
            },
            child: Container(
              width: double.infinity,
              height: size.width * 0.18,
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                  width: 2,
                  color: AppColors.heading,
                ),
                bottom: BorderSide(
                  width: 2,
                  color: AppColors.heading,
                ),
              )),
              child: Center(
                child: Text(
                  "Encerra sessão",
                  style: AppTextStyles.titleListTile,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*border: Border.all(width: 2, color: Colors.black)),

Text(

Text(
                "Sair do aplicativo",
                textAlign: TextAlign.center,
                style: AppTextStyles.titleListTile,
              ),

]











Container(
            alignment: AlignmentDirectional.center,
            height: size.height * 0.10,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(width: 2, color: AppColors.heading),
              bottom: BorderSide(width: 2, color: AppColors.heading),
            )),
            child: TextButton(
              onPressed: () async {
                await loginController.logout(context);
                setState(() {});
              },
              child: Text(
                "Sair do aplicativo",
                style: AppTextStyles.titleListTile,
              ),
            ),
          ),






               */