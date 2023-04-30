import 'package:flutter/material.dart';
import 'package:payment_ui_task/constants/colours.dart';
import 'package:payment_ui_task/views/payment_pages/widgets/MyListView.dart';


class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ListTile(title: Text('Transaction'),),
          SizedBox(height: 12,),
          Text('Transaction',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
          SizedBox(height: 12,),
          MyContainers(),
          SizedBox(height: 20,),
          MyList(),
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
          child: Center(child: Text('on Hold',)),
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