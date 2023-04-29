import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
   const MyListTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // ListTile(
          //   title: const Text('Default Method'),
          //
          //   trailing: IconButton(
          //     onPressed: (){
          //
          //     },
          //     icon: const Icon(Icons.arrow_forward_ios),
          //   ),
          // ),
          // const SizedBox(height: 5,),
          // ListTile(
          //   title: const Text('PaymentProfile'),
          //   // subtitle: Text('onlinne payment'),
          //   trailing: IconButton(
          //     onPressed: (){
          //
          //     },
          //     icon: const Icon(Icons.arrow_forward_ios),
          //   ),
          // )

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Default Method',style: TextStyle(fontSize: 16),),
              Row(
                children: [
                  Text('online payments',style: TextStyle(fontSize: 12),),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.arrow_forward_ios,size: 12,))
                ],
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment Profile',style: TextStyle(fontSize: 16),),
              Row(
                children: [
                  Text('Bank Accounts',style: TextStyle(fontSize: 12),),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.arrow_forward_ios,size: 12,))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
