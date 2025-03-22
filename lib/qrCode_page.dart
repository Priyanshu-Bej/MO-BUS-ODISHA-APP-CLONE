import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qrCode_page extends StatefulWidget {
  const qrCode_page({super.key});

  @override
  State<qrCode_page> createState() => _qrCode_pageState();
}

class _qrCode_pageState extends State<qrCode_page> {
  bool showQR = false;
  List<String> data = [
    "Priyanshu Bej's Mo Bus clone app highlights system weaknesses, raises scam awareness, and proposes solutions.",
    "Priyanshu Bej's Mo Bus clone app highlights system weaknesses, raises scam awareness,and proposes solutions.",
    "Priyanshu Bej's Mo Bus clone app highlights system weaknesses, raises scam awareness, and  proposes solutions.",
    "Priyanshu Bej's Mo Bus clone app highlights system weaknesses, raises scam  awareness, and proposes solutions.",
    "Priyanshu Bej's Mo Bus clone app highlights system weaknesses, raises scam awareness, and proposes  solutions.",
  ];
  int index = 0;
  double heightSpace = 605;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF377EC0),
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 45,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 60, 127, 190))),
                    onPressed: () {
                      setState(() {
                        showQR = true;
                        index = (index + 1) % 4;
                        heightSpace = 340;
                      });
                    },
                    child: Text(
                      "GENERATE PASS QR",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () => _showPopupInstruction2(),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Visibility(
              visible: showQR,
              child: QrImageView(
                data: data[index],
                version: QrVersions.auto,
                size: 265.0,
              ),
            ),
            SizedBox(
              height: heightSpace,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "Note: The QR Code will be valid for 3 minutes only.\nAfter expiry, click on Generate QR code to view the\nQR code again.",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPopupInstruction2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          insetPadding: EdgeInsets.all(20),
          content: Container(
            height: 390,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  color: Color(0xFFD3D3D3),
                  child: Text(
                    "Instructions",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),
                SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Please generate the QR code and show to guide",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "2. Generated QR Code will be valid for 3 minutes only",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    color: Color(0xFFD3D3D3),
                    child: Text(
                      "OK",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
