//imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer';
import 'package:yinkana_app/constans.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class EscaneoQR extends StatefulWidget {
  @override
  _EscaneoQRState createState() => _EscaneoQRState();
}

class _EscaneoQRState extends State<EscaneoQR> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String? ruta_Pantalla;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/hoteles/polynesia.png',
          fit: BoxFit.contain,
          height: 100.0,
        ),
        backgroundColor: ColorsConstans.PolynesiaColor,
        toolbarHeight: 150.0,
      ),
      backgroundColor: ColorsConstans.PolynesiaColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 4,
                child: _buildQrView(context)), //Llamamos a la función del QR
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350.0,
                  child: Row(
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.place,
                          size: 30.0,
                          color: ColorsConstans.PolynesiaColor,
                        ),
                      ),
                      Spacer(),
                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.add_task,
                          size: 30.0,
                          color: ColorsConstans.PolynesiaColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        shadowColor: Colors.black,
                        elevation: 6,
                        padding: EdgeInsets.symmetric(
                            horizontal: 45.0, vertical: 15.0),
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(context, '/hoteles');
                    },
                    child: Text('Salir',
                        style: TextStyle(
                            color: ColorsConstans.PolynesiaColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        ruta_Pantalla = scanData.code;
        _deQr_aPantalla();
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  void _deQr_aPantalla() {
    if (ruta_Pantalla != null) {
      Navigator.pushNamed(context, '$ruta_Pantalla');
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
