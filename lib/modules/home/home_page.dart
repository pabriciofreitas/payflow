import 'package:flutter/material.dart';
import 'package:ppayflow/modules/login/login_controller.dart';
import 'package:ppayflow/shared/themes/app_colors.dart';
import 'package:ppayflow/shared/themes/app_text_styles.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final loginController = LoginController();
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    )
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.1871),
        child: Container(
          height: size.height * 0.1871,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: AppTextStyles.titleRegular,
                  children: [
                    TextSpan(
                        text: "Pabricio",
                        style: AppTextStyles.titleBoldBackground)
                  ],
                ),
              ),
              subtitle: Text("Mantenha suas contas em dia",
                  style: AppTextStyles.captionShape),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/config');
                },
                child: Container(
                  height: size.width * 0.128,
                  width: size.width * 0.128,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: size.height * 0.1834,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                controller.setPage(0);
                setState(() {});
              },
              icon: Icon(
                Icons.home,
                color: AppColors.primary,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/barcode_scanner");
              },
              child: Container(
                height: size.width * 0.1500,
                width: size.width * 0.1500,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child:
                    Icon(Icons.add_box_outlined, color: AppColors.background),
              ),
            ),
            IconButton(
              onPressed: () {
                controller.setPage(1);
                setState(() {});
              },
              icon: Icon(Icons.description_outlined, color: AppColors.body),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      color: AppColors.primary,
                    ),*/