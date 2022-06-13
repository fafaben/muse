import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:untitled3/button_widget.dart';
import 'package:untitled3/helpers/helpers_fs.dart';
import 'package:untitled3/models/mudjahid.dart';
import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';

class QRScanPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {
  String errorMessage = '';
  bool isLoading = false;
  late Mudjahid? mudjahid;

  @override
  void initState() {
    mudjahid = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('مسح مجاهد'),
          backgroundColor: Color(0xff6D8B74),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 8),
                if (isLoading)
                  CircularProgressIndicator(
                    color: Colors.red,
                  ),
                if (mudjahid != null)
                  Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          '${mudjahid?.nom}',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Image.network(
                          mudjahid!.image,
                          width: 200,
                          height: 200,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${mudjahid?.description}',
                          style: GoogleFonts.notoSansArabic(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 72),
                if (errorMessage.isNotEmpty)
                  Text(
                    '$errorMessage',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ButtonWidget(
                  text: 'انقر هنا لمسح الصورة',
                  onClicked: () => scanQRCode(),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );

  Future<void> scanQRCode() async {
    try {
      final documentID = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      // Callback Qr Code
      setState(() {
        isLoading = true;
        mudjahid = null;
      });

      DocumentReference? _mudjahidDocRef =
          await HelperFS().getDocument(documentID, "mudjahidin");
      if (_mudjahidDocRef != null) {
        DocumentSnapshot _mudjahidSnapshot = await _mudjahidDocRef.get();
        if (_mudjahidSnapshot.exists) {
          setState(() {
            mudjahid = Mudjahid.fromSnapshot(_mudjahidSnapshot);
            errorMessage = '';
          });
        } else {
          log('Not found');
          setState(() {
            errorMessage = 'الرمز غير موجود';
            isLoading = false;
            mudjahid = null;
          });
        }
      }
    } on PlatformException {
      setState(() {
        isLoading = false;
        mudjahid = null;
        errorMessage = 'Failed to get platform version.';
      });
    }
    setState(() {
      isLoading = false;
    });
  }
}
