import 'package:flutter/cupertino.dart';
import 'package:payment_ui_task/utils/colours.dart';

class PaymentOverview extends StatelessWidget {
  const PaymentOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            children: [
              Container(
                height: 100,
                width: 150,
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
                      Text("0",style: TextStyle(color: MyColorClass.offwhite),),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),

              Container(
                height: 100,
                width: 150,
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
                      Text("13,332",style: TextStyle(color: MyColorClass.offwhite),),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
