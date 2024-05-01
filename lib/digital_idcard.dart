import 'package:flutter/material.dart';

class DigitalId extends StatelessWidget {
  const DigitalId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return _buildVertical();
        } else {
          return _buildHorizontal();
        }
      }),
    );
  }

  Widget _buildVertical() {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 290,
            ),
            Container(
              height: 180,
              width: double.infinity,
              child: Image.asset(
                "assets/header.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 90,
              left: 0,
              right: 0,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/foto2.jpg"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        const Text(
          "Keyla Bintang Arafat P",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Junior Programmer",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          "ID. No",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Text(
          "20210120014",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "E-mail",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Text(
          "keylabintangap@gmail.com",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Phone",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Text(
          "+628515637604",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
          indent: 20,
          endIndent: 20,
        ),
        Expanded(
            child: Image.asset(
          'assets/signature.png',
          width: 300,
          height: 300,
          alignment: Alignment.bottomCenter,
        )),
        SizedBox(height: 15),
        Expanded(
          child: Image.asset(
            'assets/barcode.png',
            width: 300,
            height: 300,
            alignment: Alignment.topCenter,
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontal() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 290,
            ),
            Container(
              width: 170,
              height: double.infinity,
              child: Image.asset(
                "assets/header.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 120,
              left: 45,
              right: 0,
              child: Container(
                width: 180,
                height: 180,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/foto2.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Spacer between image and text
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70), // Spacing between image and text
            Text(
              "Keyla Bintang Arafat P",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Junior Programmer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 25),
            Text(
              "ID. No",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "20210120014",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 25),
            Text(
              "E-mail",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "keylabintangap@gmail.com",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 25),
            Text(
              "Phone",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "+628515637604",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        const SizedBox(width: 100),
        Column(
          children: [
            SizedBox(height: 200),
            Expanded(
              child: Image.asset(
                'assets/signature.png',
                width: 250,
                height: 250,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/barcode.png',
                width: 250,
                height: 250,
                alignment: Alignment.topRight,
              ),
            ),
          ],
        ), // Spacer between text and images
      ],
    );
  }
}
