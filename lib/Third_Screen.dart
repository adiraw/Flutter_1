import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key? key}) : super(key: key);

  List<String> itemList = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Check'),
      ),
      body: ListView.separated(separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.red,),itemCount: 10,itemBuilder: (context, index){
        return ListTile(
          title: Text('Hello$index'),
        );
      },
      ),
    );
  }
}
