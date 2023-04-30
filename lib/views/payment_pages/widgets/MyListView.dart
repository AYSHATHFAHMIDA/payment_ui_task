import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: payouts.myList.length,
          itemBuilder: (context,index){
           // String sub=payouts.account;
            String price=payouts.myList[index].price.toString();

           return Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Container(
                           height: MediaQuery.of(context).size.height * .07,
                           width: MediaQuery.of(context).size.height * .07,
                           decoration: const BoxDecoration(
                             color: Colors.red,
                             borderRadius: BorderRadius.all(
                               Radius.circular(5),
                             ),
                           ),
                           child: Image.asset(payouts.myList[index].image,fit: BoxFit.cover,)
                         ),
                         const SizedBox(width:10),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                                payouts.myList[index].orderId,
                               style: GoogleFonts.poppins(
                                   color: Colors.black,
                                   fontWeight: FontWeight.w600,
                                   fontSize: 16),
                             ),
                             Text(
                               "Jul 12, 02:06 PM",
                               style: Theme.of(context).textTheme.bodyLarge,
                             ),
                           ],
                         ),
                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         // Text(price+sub,style: TextStyle(fontSize: 10,color: MyColorClass.offwhite),),
                         Text('₹'+price),
                         Row(
                           children: [
                             const CircleAvatar(
                                 backgroundColor: Colors.green, maxRadius: 6),
                             const SizedBox(width: 5),
                             Text(
                               "Successful",
                               style: GoogleFonts.poppins(
                                   color: Colors.black),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ],
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 Text(
                   "₹397.4 deposited to:552400056211",
                   style: GoogleFonts.poppins(
                       color: Colors.grey.shade600,
                       fontSize: 14,
                       fontWeight: FontWeight.w600),
                 ),
                 Divider(
                   thickness: 1,
                   // color: ColorConst.borderColor,
                 ),
               ],


             ),
           );


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

          //   return Container(
          //     // color: Colors.cyan,
          //     decoration: BoxDecoration(
          //       // color: Colors.cyan,
          //       border: Border.all(color: MyColorClass.offwhite)
          //
          //     ),
          //     padding: EdgeInsets.all(5),
          //     // height: 100,
          //     // width: double.infinity,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Row(
          //               children: [
          //                 Container(
          //                   // height: MediaQuery.of(context).size.height*0.07,
          //                   //   width: MediaQuery.of(context).size.width*0.07,
          //                     child: Image.asset(payouts.myList[index].image,fit: BoxFit.cover,width: 50,height: 50,)),
          //               ],
          //             ),
          //             // SizedBox(width: 5,),
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(payouts.myList[index].orderId,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          //                 Text(payouts.myList[index].datetime.toString(),style: TextStyle(fontSize: 12,color: MyColorClass.offwhite),),
          //               ],
          //             ),
          //             Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          //               children: [
          //                 Row(
          //
          //                   children: [
          //                     Icon(Icons.currency_rupee_outlined,color: MyColorClass.blue,size: 14,),
          //                     Text(payouts.myList[index].price.toString(),style: TextStyle(color: MyColorClass.blue,fontSize: 14),),
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     CircleAvatar(
          //                       backgroundColor: MyColorClass.green,
          //                       radius: 5,
          //                     ),
          //                     Text(payouts.myList[index].status,style: TextStyle(fontSize: 12,color: MyColorClass.offwhite),),
          //                   ],
          //                 )
          //               ],
          //             ),
          //           ],
          //         ),
          //         Row(
          //           children: [
          //             Icon(Icons.currency_rupee_outlined,size: 10,color: MyColorClass.offwhite,),
          //             Text(price+sub,style: TextStyle(fontSize: 10,color: MyColorClass.offwhite),),
          //           ],
          //         )
          //       ],
          //     ),
          //   );

          },

      );
  }
}
