import 'package:flutter/material.dart';
import 'package:payment_ui_task/controllers/mylist_controller.dart';
import 'package:provider/provider.dart';
class MyList extends StatelessWidget {
   MyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final payouts=Provider.of<MylistController>(context);

    return ListView.builder(
      itemCount: payouts.myList.length,
        itemBuilder: (context,index){

        },
    );
  }
}
