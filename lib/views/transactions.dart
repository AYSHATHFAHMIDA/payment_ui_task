import 'package:flutter/material.dart';
import 'package:payment_ui_task/utils/colours.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(title: Text('Transaction'),),
        SizedBox(height: 5,),
        MyContainers(),
        SizedBox(height: 5,),
      ],
    );
  }
}

Widget MyContainers(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            border:  Border.all(
              color: MyColorClass.offwhite,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),

          ),
          height: 25,
          width: 120,
          child: Center(child: Text('on Hold')),
        ),
        SizedBox(width: 5,),
        Container(
          decoration: BoxDecoration(
            // border:  Border.all(
            //   color: MyColorClass.blue,
            // ),
            color: MyColorClass.blue,
            borderRadius: BorderRadius.all(Radius.circular(20)),

          ),
          height: 25,
          width: 120,
          child: Center(child: Text('Payouts')),
        ),
        SizedBox(width: 5,),

        Container(
          decoration: BoxDecoration(
            border:  Border.all(
              color: MyColorClass.offwhite,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),

          ),
          height: 25,
          width: 120,
          child: Center(child: Text('Refunds')),
        )

      ],
    ),
  );
}