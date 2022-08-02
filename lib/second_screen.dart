import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("After Signing in"),
      ),
      body :  Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          // text('This is the screen after you  have signed in'),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0,190),
                child: Text('This is the screen after you signed up',style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                ),
                ),
              ),
              Row(

                children: [

                  Expanded(child:Column(
                    children: [
                      InkWell(
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(50.0),
                            child: Image.asset(
                              'image/Discord.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          onTap: () => launch(
                              'https://discord.com/channels/993444242385023086/993823575318483025')),
                      InkWell(
                          child: Text(
                            "Discord",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () => launch(
                              'https://discord.com/channels/993444242385023086/993823575318483025')),
                    ],
                  ),
                  ),

                  // SizedBox(
                  //   width: 10,
                  // ),

                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(50.0),
                              child: Image.asset(
                                'image/github.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              )),
                          onTap: () =>
                              launch('https://github.com/'),
                        ),
                        InkWell(
                            child: Text(
                              "Github",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            onTap: () => launch(
                                'https://github.com/sujit471')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}