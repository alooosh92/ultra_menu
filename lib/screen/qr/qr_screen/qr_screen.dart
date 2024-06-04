import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:ultra_menu/controllers/qr_controller.dart';
import 'package:ultra_menu/data/colors.dart';
import 'package:ultra_menu/data/values.dart';
import 'package:ultra_menu/screen/qr/qr_screen/widget/icon_camera_button.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrController;
  bool flash = false;
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrController!.pauseCamera();
    } else if (Platform.isIOS) {
      qrController!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "$imageLocalPath/qrback.png",
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
            width: MediaQuery.sizeOf(context).width - 70,
            height: 40,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3.0,
                    spreadRadius: 0.0,
                    offset: Offset(0, 2.0),
                  )
                ],
                color: ColorsManager.veryDarkGray,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconCameraButton(
                    icon: flash ? Icons.flash_off : Icons.flash_on,
                    press: () {
                      setState(() async {
                        qrController!.toggleFlash();
                        flash = await qrController!.getFlashStatus() ?? false;
                      });
                    }),
                IconCameraButton(
                    icon: Icons.cameraswitch,
                    press: () {
                      if (qrController != null) {
                        qrController!.flipCamera();
                      }
                    }),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 6,
            left: 25,
            right: 25,
            child: Image.asset(
              "$imageLocalPath/qrborder.png",
              height: MediaQuery.sizeOf(context).width - 50,
              width: MediaQuery.sizeOf(context).width - 50,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 6 + 15,
            left: 40,
            right: 40,
            child: Container(
              height: MediaQuery.sizeOf(context).width - 80,
              width: MediaQuery.sizeOf(context).width - 80,
              color: ColorsManager.white,
              child: QRView(
                key: qrKey,
                onQRViewCreated: (controll) {
                  qrController = controll;
                  controll.scannedDataStream.listen(
                    (event) {
                      setState(() {
                        result = event;
                      });
                      QrController.catchQR(result!);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
