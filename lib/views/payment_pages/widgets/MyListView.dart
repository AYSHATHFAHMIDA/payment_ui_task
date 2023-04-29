import 'package:flutter/material.dart';
import 'package:payment_ui_task/constants/colours.dart';
import 'package:provider/provider.dart';
import 'package:payment_ui_task/controllers/mylist_controller.dart';

class MyList extends StatelessWidget {
   MyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final payouts=Provider.of<MylistController>(context);

    return
      ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: payouts.myList.length,
          itemBuilder: (context,index){
           String sub=payouts.account;
            String price=payouts.myList[index].price.toString();
          // return ListTile(
          //   leading: Image.asset(payouts.myList[index].image,width: 20,height: 20,),
          //   // trailing: ,
          //   title: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(payouts.myList[index].orderId),
          //       Text(payouts.myList[index].price.toString()),
          //     ],
          //   ),
          //   subtitle: Text(payouts.myList[index].datetime.toString()),
          //   trailing:
          //       Text(payouts.myList[index].status),
          //
          //
          // );
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: MyColorClass.offwhite)
              ),
              padding: EdgeInsets.all(5),
              // height: 100,
              // width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(payouts.myList[index].image,width: 50,height: 50,),
                      // SizedBox(width: 5,),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(payouts.myList[index].orderId,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          Text(payouts.myList[index].datetime.toString(),style: TextStyle(fontSize: 12,color: MyColorClass.offwhite),),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_rupee_outlined,color: MyColorClass.blue,size: 14,),
                              Text(payouts.myList[index].price.toString(),style: TextStyle(color: MyColorClass.blue,fontSize: 14),),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: MyColorClass.green,
                                radius: 5,
                              ),
                              Text(payouts.myList[index].status,style: TextStyle(fontSize: 12,color: MyColorClass.offwhite),),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee_outlined,size: 10,color: MyColorClass.offwhite,),
                      Text(price+sub,style: TextStyle(fontSize: 10,color: MyColorClass.offwhite),),
                    ],
                  )
                ],
              ),
            );

          },

      );
  }
}
