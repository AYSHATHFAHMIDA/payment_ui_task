import 'package:flutter/material.dart';
import 'package:payment_ui_task/constants/colours.dart';

class TransactionLimit extends StatelessWidget {
  const TransactionLimit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      // width: 350,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10,width: 5,),borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Transaction Limit',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text(
            'A free limit up to which you will recieve the bank online payments directly in your bank',
            style: TextStyle(fontSize: 12),
          ),


          // SizedBox(height: 15,),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child:
            Container(
              margin: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  backgroundColor: MyColorClass.offwhite,
                  minHeight: 5,
                  value: .36,
                  // semanticsLabel: '36,6668 left out of 50,000',
                ),
              ),
            ),
          // ),
          // SizedBox(height: 5,),
          Text('36,6668 left out of 50,000',style: TextStyle(fontSize: 12,color: MyColorClass.offwhite),),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){

          }, child: Text('Increment Limit',style: TextStyle(fontSize: 14),)),
        ],
      ),
    );
  }
}
