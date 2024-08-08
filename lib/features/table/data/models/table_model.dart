import 'package:flutter/material.dart';

class TableModel {
  final String title;
  final int length;
  final int? number;
  TableModel({required this.title, this.number, this.length = 5});

  List items1 = [
    'Horizon UI PRO',
    'Horizon UI Free',
    'Marketplace',
    'Weekly Updates',
  ];

  List items2 = ['17.5%', '10.8%', '21.3%', '31.5%', '2.2%'];

  List items3 = ['2.458', '1.485', '1.024', '858', '258'];

  List items4 = [
    '24.Jan.2021',
    '12.Jun.2021',
    '5.Jan.2021',
    '7.Mar.2021',
    '17.Dec.2021'
  ];

  List items5 = ['18.Apr.2021', '18.Apr.2021', '20.May.2021', '12.Jul.2021'];

  List statusColor = [
    const Color(0xff05CD99),
    const Color(0xffEE5D50),
    const Color(0xffFFCE20),
    const Color(0xff05CD99),
  ];

  List statusIcon = [
    const Icon(Icons.done, color: Colors.white, size: 14),
    const Icon(Icons.close, color: Colors.white, size: 14),
    const Icon(Icons.priority_high, color: Colors.white, size: 14),
    const Icon(Icons.done, color: Colors.white, size: 14),
  ];

  List statusText = ['Approved', 'Disable', 'Error', 'Approved'];

  List progressValue = ['17.5%', '10.8%', '2.2%', '21.3%'];
}
