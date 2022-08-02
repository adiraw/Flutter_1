import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/Food_Item.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  List<String> itemList = [
  'Aditya Rawal',
  'Aditya Rawal',
  'Aditya Rawal',
  'Aditya Rawal',
  'Aditya Rawal',
];
List<String> imageList = [
  'image/adiraw.png',
  'image/adiraw.png',
  'image/adiraw.png',
  'image/adiraw.png',
  'image/adiraw.png',
];
List<String> carrer = [
  'Flutter Developer',
  'Finance',
  'Engineer',
  'Vlogger',
  'Comedian',
];
@override
Widget build(BuildContext context) {
  return Scaffold(
    // appBar: AppBar(
    //   title: const Text('List Check'),
    // ),
    body: ListView.separated(separatorBuilder: (BuildContext context,int index)=>
    const Divider(
      indent: 10,
    ),
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return MyList(title: itemList[index],
          image:imageList[index], carrer: carrer[index],);
        }),
  );
}
// Widget myList({ required String title, required String image}) {
//   return Text(title);
// }

}
class MyList extends StatelessWidget {
  const MyList({Key? key, required this.title, required this.image, required this.carrer}) : super(key: key);
  final String title;
  final String image;
  final String carrer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            CircleAvatar(
              backgroundImage: AssetImage(image),radius: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(carrer,style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),),
                ],
              ),
            ),

            //const Icon(Icons.image),
          ],
        ),
         const SizedBox(height: 10,),
      ],
    );
  }
}
