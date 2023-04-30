import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_ui_task/constants/colours.dart';

class PaymentOverview extends StatelessWidget {
  const PaymentOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 100,
            // width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: MyColorClass.orange,
            ),
            // color: MyColorClass.orange,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('AMOUNT ON HOLD',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: MyColorClass.offwhite),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(Icons.currency_rupee_outlined,color: MyColorClass.offwhite,size: 14,),
                      Text("0",style: TextStyle(color: MyColorClass.offwhite),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 20,),

        Expanded(
          child: Container(
            height: 100,
            // width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: MyColorClass.green,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('AMOUNT RECIEVED',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: MyColorClass.offwhite),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_rupee_outlined,color: MyColorClass.offwhite,size: 14,),
                      Text("13,332",style: TextStyle(color: MyColorClass.offwhite),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
