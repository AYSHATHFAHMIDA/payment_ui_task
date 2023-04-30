import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
   const MyListTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
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

        OptionListClass(title: 'Default Method',subtitle: 'Online Payments',iconname: Icons.arrow_forward_ios,),
        OptionListClass(title: 'Payment Profile',subtitle: 'Bank Payments',iconname: Icons.arrow_forward_ios,),
        Divider(),
        OptionListClass(title: 'Payment Overview',subtitle: 'Online Payments',iconname: Icons.keyboard_arrow_down,),


      ],
    );
  }
}
class OptionListClass extends StatelessWidget {
  const OptionListClass({ this.title,required this.subtitle,required this.iconname});
final String? title;
final String subtitle;
final IconData iconname;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title!,style: TextStyle(fontSize: 16),),
        Row(
          children: [
            Text(subtitle,style: TextStyle(fontSize: 12),),
            IconButton(onPressed: (){

            }, icon: Icon(iconname,size: 12,))
          ],
        )
      ],
    );
  }
}


