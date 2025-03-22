import 'package:flutter/material.dart';
import 'package:mo_bus_app/qrCode_page.dart';

class moPassOnline_Page extends StatefulWidget {
  const moPassOnline_Page({super.key});

  @override
  State<moPassOnline_Page> createState() => _moPassOnline_PageState();
}

class _moPassOnline_PageState extends State<moPassOnline_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFF377EC0),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 22,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "MoPass Online",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => _showPopupInstruction1(),
              child: Icon(
                Icons.info_outline,
                size: 17,
                color: Color(0xFF96C2E9),
              ),
            )
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => qrCode_page(),
          ),
        ),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                color: Color(0xFFD5D9E5),
                border: Border.all(
                  width: 3,
                  color: Color(0xFF26467F),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    color: const Color(0xFF26467F),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bubaneswar Pass",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "RUNNING",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Valid From",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      Text(
                        "Expires:",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "26/07/2023",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        "24/08/2023",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Pass Type",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      Text(
                        "Txn. No",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "All(Including AC)",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Text(
                        "230725511554",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF347DC1),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        height: 20,
        elevation: 0,
        color: Color(0xFFFAFAFA),
      ),
    );
  }

  void _showPopupInstruction1() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          insetPadding: EdgeInsets.all(15),
          content: Container(
            height: 700,
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
                        "MoPass Online",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The Capital Region Urban Transport offers an added convenience of not having to pay cash for your bus ride - especially if you buy the MoPass Online for the MO BUS service. To ensure that MO BUS is affordable for citizens in Bhubaneswar, CRUT offers a variety of fare products to help riders save money. The MoPass Online is valid only along the CRUT Bus Network and can be purchased only through MOBUS mobile app.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "BHUBANESWAR PASS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Unlimited ride on all MO BUS routes within the Bhubaneswaar Municipal Corporation (BMC) area.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MAGIC PASS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Pass that allows unlimited rides on all the MO BUS operational routes within the MO BUS service area.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ROUTE PASS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Designed for frequent commuters, you can enjoy unlimited trips along your preferred routes.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
