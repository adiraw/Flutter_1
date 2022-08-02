import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
 FourthScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('nsdklf'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (_, index) => cardd(),
          itemCount: 100,


          physics: BouncingScrollPhysics(),

        )
    );
  }

  cardd() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('card'),
            Icon(Icons.favorite)
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.blue,

      ),
      // margin:EdgeInsetsDirectional.all(5),
    );


  }
}