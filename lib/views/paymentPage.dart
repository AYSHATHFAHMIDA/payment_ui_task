import 'dart:ffi';

import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {

          },
        ),
        title: Center(child: Text('Payments')),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.info_outline, color: Colors.white,))
        ],
        elevation: 1,
      ),
    );
  }
}


