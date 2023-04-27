import 'package:flutter/material.dart';
import 'package:payment_ui_task/utils/colours.dart';

class TransactionLimit extends StatelessWidget {
  const TransactionLimit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10,width: 5,),borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text('Transaction Limit',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text(
            'A free limit up to which you will recieve the bank online payments directly in your bank',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              backgroundColor: MyColorClass.offwhite,
              minHeight: 5,
              value: 0.3,
              semanticsLabel: '36,6668 left out of 50,000',
            ),
          ),
          // SizedBox(height: 5,),
          Text('36,6668 left out of 50,000',style: TextStyle(fontSize: 12,color: MyColorClass.offwhite),),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){

          }, child: Text('Increment Limit')),
        ],
      ),
    );
  }
}
