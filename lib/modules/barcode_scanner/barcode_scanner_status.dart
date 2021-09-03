import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isAvailable; //camera pronta?
  final String error; //algum erro?
  final String barcode; // tem barcode? se tiver vamos armazenar
  final bool stopScanner;

  BarcodeScannerStatus({
    this.isAvailable = false,
    this.error = "",
    this.barcode = "",
    this.stopScanner = false,
  });

  factory BarcodeScannerStatus.available() => BarcodeScannerStatus(
        isAvailable: true,
        stopScanner: false,
      );

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode, stopScanner: true);

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message, stopScanner: true);

  //só exibir câmera se ela estiver pronta e não houver erro
  bool get showCamera => isAvailable && error.isEmpty; //erro está vazio

  bool get hasError => error.isNotEmpty; //erro não está vazio

  bool get hasBarcode => barcode.isNotEmpty; //barcode não está vazio

  BarcodeScannerStatus copyWith({
    bool? isAvailable,
    String? error,
    String? barcode,
    bool? stopScanner,
    CameraController? cameraController,
  }) {
    return BarcodeScannerStatus(
      isAvailable: isAvailable ?? this.isAvailable,
      error: error ?? this.error,
      barcode: barcode ?? this.barcode,
      stopScanner: stopScanner ?? this.stopScanner,
    );
  }
}
