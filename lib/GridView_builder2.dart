import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  FifthScreen({Key? key}) : super(key: key);
  List<String> itemList = [
    'Aditya Rawal',
    'Aditya Rawal',
    'Aditya Rawal',
    'Aditya Rawal',
    'Aditya Rawal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2
          ),
          itemCount: itemList.length,
          itemBuilder: (_,index){
            return Why(title: itemList[index]);
          }
      ),
    );
  }
}
class Why extends StatelessWidget {
  const Why({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue.shade200
      ),

      child: Center(child: Text(title)),
    );
  }
}