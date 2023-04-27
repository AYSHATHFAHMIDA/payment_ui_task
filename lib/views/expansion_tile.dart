import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
   const MyListTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Default Method'),

          trailing: IconButton(
            onPressed: (){

            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ),
        const SizedBox(height: 5,),
        ListTile(
          title: const Text('PaymentProfile'),
          // subtitle: Text('onlinne payment'),
          trailing: IconButton(
            onPressed: (){

            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        )
      ],
    );
  }
}
