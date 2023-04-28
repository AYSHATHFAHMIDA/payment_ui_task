import 'package:flutter/material.dart';

import '../models/myList.dart';

class MylistController with ChangeNotifier{
  List<MyListModel>myList=[
    MyListModel(
      orderId: 'order #1688068',
      datetime: DateTime.now(),
      price: 799,
      image: 'assets/images/image1',
      status: 'Successful',
    ),

    MyListModel(
      orderId: 'order #1457741',
      datetime: DateTime.now(),
      price: 397.4,
      image: 'assets/images/image2',
      status: 'Successful',
    ),
    MyListModel(
      orderId: 'order#1408896',
      datetime: DateTime.now(),
      price: 686.42,
      image: 'assets/images/image3',
      status: 'Successful',
    ),
    MyListModel(
      orderId: 'order  #1369633',
      datetime: DateTime.now(),
      price: 1123.5,
      image: 'assets/images/image4',
      status: 'Successful',
    ),




  ];

}