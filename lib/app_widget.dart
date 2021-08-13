import 'package:flutter/material.dart';
import 'package:ppayflow/modules/config/config_page.dart';
import 'package:ppayflow/shared/themes/app_colors.dart';

import 'modules/barcode_scanner/barcode_scanner_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pay Flow',
        theme: ThemeData(
          primaryColor: AppColors.primary,
        ),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => SplashPage(),
          "/login": (context) => LoginPage(),
          "/config": (context) => ConfigPage(),
          "/home": (context) => HomePage(),
          "/barcode_scanner": (context) => BarcodeScannerPage(),
        });
  }
}
/*
 
        routes: {
          "/splash": (context) => SplashPage(),
          "/login": (context) => LoginPage(),
          "/home": (context) => HomePage(),
          
        });
  }
}
home: SplashPage(),
*/