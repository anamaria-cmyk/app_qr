// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class ScanButton extends StatelessWidget { 

 @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      child:const Icon( Icons.filter_center_focus),
      onPressed: () async {
        //String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3D8BEF', 'cancelar', false, ScanMode.QR);
          const barcodeScanRes = 'http://yonodigo_blablabla.com';

          ( barcodeScanRes );
      },
    );
  }
}