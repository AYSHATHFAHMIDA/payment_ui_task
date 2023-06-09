import 'package:flutter/material.dart';
import 'package:payment_ui_task/views/payment_pages/widgets/MyListView.dart';
import 'package:payment_ui_task/views/payment_pages/paymentPage.dart';
import 'package:payment_ui_task/constants/colours.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controllers/mylist_controller.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context)=>MylistController()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const PaymentPage(),
        // home: MyList(),
        theme: ThemeData(
          primaryColor: MyColorClass.blue,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      ),
    );
  }
}






