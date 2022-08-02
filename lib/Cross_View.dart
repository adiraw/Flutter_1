import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
Widget build(BuildContext context) {
  return Scaffold(
    // appBar: AppBar(
    //   title: const Text('List Check'),
    // ),
    body: GridView.count(
      // const Divider(
      //   indent: 10,
      // ),

      // itemCount: itemList.length,
      crossAxisCount: 4,
      //semanticChildCount: 2,
      children: [
        Center(
          child :Text('item 1'),
        ),
        Center(
          child: Text('Item 2'),
        ),
        Center (
          child : Text('Item 3'),
        ),
        Center (
          child : Text('Item 3'),
        ),
      ],
      // itemBuilder: (context, index) {
      //   return myList(title: itemList[index]);
      // }
    ),
  );
}