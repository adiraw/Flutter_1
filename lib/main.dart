import 'package:flutter/material.dart';
import 'package:untitled/First_Screen.dart';
import 'package:untitled/GridView_builder.dart';
import 'package:untitled/GridView_builder2.dart';
//import 'package:untitled/First_Screen.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/second_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:untitled/Food_Item.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      // to remove the debug tag in default app top
      title: 'Hello',
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => FoodScreen(),
      //   '/second': (context) => FirstScreen(),
      // },
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      home: FoodScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// // extra chiz in  stateful  than stateless  we can change the state
//
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   final _formKey = GlobalKey<FormState>();
//
//   void _incrementCounter() {
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return SafeArea(
//
//       child: Scaffold(
//           resizeToAvoidBottomInset: false,
//          // resizeToAvoidBottomPadding: false,
//           // appBar: PreferredSize(
//         //   child: Container(
//         //     padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
//         //     child: const Padding(
//         //       padding: EdgeInsets.only(left: 163.0, top: 20.0, bottom: 20.0),
//         //       child: Text(
//         //         'Lets Code',
//         //         style: TextStyle(
//         //             fontSize: 20.0,
//         //             fontWeight: FontWeight.w500,
//         //             color: Colors.white),
//         //       ),
//         //     ),
//         //     decoration: const BoxDecoration(
//         //         gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
//         //         boxShadow: [
//         //         ]),
//         //   ),
//         //   preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
//         // ),
//          // backgroundColor: Color(0xffffff),
//           /*body:Column(
//             children: [
//               Expanded(child: Container(
//                 //height: 500,
//                 //width: 500,
//                 decoration: BoxDecoration(
//                   // color:Color(0xfffbcf7c),
//                     gradient: LinearGradient(colors: [
//                       Colors.blueGrey,
//                       Colors.red,
//                     ]
//                     ),
//                     border: Border.all(color: Colors.grey, width: 0),
//                     borderRadius: BorderRadius.circular(13),
//                     boxShadow: [
//                       BoxShadow(color: Colors.green),
//                     ]
//                 ),
//                 child:SingleChildScrollView(
//                   child: Column(
//
//                     children: [
//
//                       ClipRRect(borderRadius: BorderRadius.circular(50.0),
//                         child:
//
//                         Image.asset('image/adiraw.png',width: 90,height: 90, fit:BoxFit.cover,),
//
//                       ),
//                       InkWell(
//                         child: Text("Aditya",style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.white,
//                           fontStyle: FontStyle.normal,
//                         ),
//                         ),
//                         onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
//                       ),
//                       TextButton(
//                           onPressed: () => showDialog<String>(
//                               context: context,
//                               builder: (BuildContext context) => AlertDialog(
//                                 title: const Text('AlertDialog Title'),
//                                 content:
//                                 const Text('AlertDialog description'),
//                                 actions: <Widget>[
//                                   TextButton(
//                                       onPressed: () => Navigator.pop(
//                                           context, 'cancel'),
//                                       child: const Text('cancel')),
//                                   TextButton(
//                                       onPressed: () =>
//                                           Navigator.pop(context, 'Ok'),
//                                       child: const Text('Ok')),
//                                 ],
//                               )),
//                           child: const Text('Show Dialog')),
//                       ElevatedButton(
//                         onPressed: (){
//                           ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                   duration:Duration(milliseconds: 6000 ),
//                                   content : const Text('Awesome Snackbar'),
//                                   action : SnackBarAction(
//                                     label: 'Action',
//                                     onPressed: (){},
//                                   )
//                               )
//                           );
//
//                         }, child: const Text("Show Snackbar"),
//                       ),
//                       Form(
//                         key: _formKey,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextFormField(
//                               decoration: InputDecoration(
//                                 hintText: 'Name',
//                                 border: OutlineInputBorder(),
//                                 contentPadding: EdgeInsets.all(20),
//                                 filled: true,
//                                 fillColor: Colors.blue.shade100,
//                                 prefixIcon: Icon(Icons.mail),),
//                               // The validator receives the text that the user has entered.
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter some text';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 16.0),
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   // Validate returns true if the form is valid, or false otherwise.
//                                   if (_formKey.currentState!.validate()) {
//                                     // If the form is valid, display a snackbar. In the real world,
//                                     // you'd often call a server or save the information in a database.
//                                     ScaffoldMessenger.of(context).showSnackBar(
//                                       const SnackBar(content: Text('Processing Data')),
//                                     );
//                                   }
//                                 },
//                                 child: const Text('Submit'),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       TextField(
//                         keyboardType: TextInputType.number,// to be able to enter number only
//                         obscureText: true,
//                         obscuringCharacter: "*",// for making the input password to be not able to visible
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                         decoration: const InputDecoration(
//
//                           contentPadding: EdgeInsets.all(15),
//                           filled: true,
//                           fillColor: Colors.grey,
//                           border: OutlineInputBorder(
//
//                           ),
//                           labelText: 'label',
//                           hintText: 'Enter',
//                           helperText: 'Help',
//                           counterText: 'counter',
//                           icon: Icon(Icons.star),
//                           prefixIcon: Icon(Icons.favorite),
//                           suffixIcon: Icon(Icons.park),
//                         ),
//                       ),
//                       SizedBox(height: 90,),
//                       Row(
//                         children: [
//                           Expanded(child:
//                           Column(
//                             children: [
//                               InkWell(
//                                 child: ClipRRect(borderRadius: BorderRadius.circular(50.0),
//                                     child: Image.asset('image/linkedin.png',width: 60,height: 60, fit:BoxFit.cover,)),
//                                 onTap: () => launch('https://www.linkedin.com/uas/login-submit'),
//                               ),
//
//                               Text("Linkedin",style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.white,
//                                 fontStyle: FontStyle.normal,
//                               ),),
//                             ],
//                           ),
//                           ),
//                           SizedBox(width: 90,),
//                           Expanded(child: Column(
//                             children: [
//                               InkWell(
//                                 child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(50.0),
//                                     child: Image.asset('image/github.png',width: 60,height: 60, fit:BoxFit.cover,)),
//                                 onTap: () => launch('https://github.com/'),
//                               ),
//                               Text("Github",style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.white,
//                                 fontStyle: FontStyle.normal,
//                               ),
//                               ),
//                             ],
//                           ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               ),
//
//
//             ],
//           )*/
//       ),
//     );
//   }
// }
// //stl  to create a stateless and stf to create a stateful class
// //.*
// // ctrl+alt+l for refractoring the code
