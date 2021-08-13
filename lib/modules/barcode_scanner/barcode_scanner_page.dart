import 'package:flutter/material.dart';
import 'package:ppayflow/shared/themes/app_text_styles.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Escaneie o código de barras do boleto",
            style: AppTextStyles.buttonBackground),
      ),
    );
  }
}
