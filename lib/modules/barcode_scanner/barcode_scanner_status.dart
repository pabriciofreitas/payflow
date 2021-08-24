class BarcodeScannerStatus {
  final bool isCameraAvailable; //camera pronta?
  final String error; //algum erro?
  final String barcode; // tem barcode? se tiver vamos armazenar
  final bool stopScanner;

  BarcodeScannerStatus({
    this.isCameraAvailable = false,
    this.error = "",
    this.barcode = "",
    this.stopScanner = false,
  });

  factory BarcodeScannerStatus.available() => BarcodeScannerStatus(
        isCameraAvailable: true,
        stopScanner: false,
      );

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode, stopScanner: true);

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message, stopScanner: true);

  //só exibir câmera se ela estiver pronta e não houver erro
  bool get showCamera => isCameraAvailable && error.isEmpty; //erro está vazio

  bool get hasError => error.isNotEmpty; //erro não está vazio

  bool get hasBarcode => barcode.isNotEmpty; //barcode não está vazio
}
