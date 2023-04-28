import 'package:flutter/material.dart';
// import 'package:payment_ui_task/utils/colours.dart';
import 'package:payment_ui_task/views/expansion_tile.dart';
import 'package:payment_ui_task/views/transaction_limit.dart';
import 'package:payment_ui_task/views/payment_overview.dart';
import 'package:payment_ui_task/views/transactions.dart';
class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: MyColorClass.offwhite,
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
      body:  SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children:  const [
          Padding(
            padding: EdgeInsets.all(20),
            child: TransactionLimit(),
          ),
            SizedBox(height: 5,),
            // ListTile(
            //   title: Text('Default Payment'),
            //
            // )
            MyListTile(),
            SizedBox(height: 5,),
            ExpansionTile(
                title: Text('Payment overview'),
              children: [
                PaymentOverview(),
                Transaction()
              ],
            ),
          ],
        ),
      ),
    );
  }
}


