import 'package:flutter/material.dart';

import 'custom_grid_view.dart';

class GenerateQRBody extends StatelessWidget {
  const GenerateQRBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 82, 82, 82),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Generate QR',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(217, 217, 217, 1),
            fontFamily: 'Itim',
            fontSize: 27,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
        ),
      ),
      body: CustomGridView(),
    );
  }
}

