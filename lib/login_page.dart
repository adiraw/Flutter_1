import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:untitled/Third_Screen.dart';
import 'package:untitled/second_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  bool _value = false;
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    Navigator.push(context,MaterialPageRoute(builder: (context) => SecondScreen()));
   _formKey.currentState!.save();
  }
  void _signup(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => ThirdScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9E5DE),

      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon Logo

              // const CircleAvatar(
              //   backgroundImage: NetworkImage('https://cdn.dribbble.com/users/458522/screenshots/16171869/media/0c5b235e80c42db71c2567d8a04625ac.png'),
              //   radius: 60.0,
              // ),
              //
              // const SizedBox(height: 5.0,),

              //greeting text

              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,50,0),
                child: Text("Welcome",
                  style: GoogleFonts.secularOne(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF091339),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text("Aditya Rawal.",
                  style: GoogleFonts.secularOne(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF29a661),
                  ),
                ),
              ),

              // const SizedBox(height: 5.0,),
              //
              // const Text('Welcome back, you\'ve been missed.',
              //     style: TextStyle(
              //       fontSize: 16,
              //     )),

              const SizedBox(height: 40.0,),

              //email text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff13367A)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xff13367A)),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xff13367A)),
                      ),
                      hintText: 'Enter the email address',

                    ),
                    validator: (value) {

                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email address';
                      }
                      if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                        return 'Please enter a valid Email';
                      }
                      return null;
                    },
                  ),
                ),
              ),



              const SizedBox(height: 20.0,),

              //password text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,

                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff13367A)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xff13367A)),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xff13367A)),
                      ),

                     // border: InputBorder.none,
                     // focusedBorder: InputBorder.none,
                      hintText: 'Password',

                    ),

                    validator: (value) {

                      if (value == null || value.isEmpty) {

                        return 'Password cannot be empty';

                      }
                      else if(value.length<6){
                        return'password must be character of more than 6';
                      }

                      return null;

                    },
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Remember Me              ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontStyle: FontStyle.normal,
                    ),),
                  Text('Forget Password',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                    ),)
                ],
              ),

              //login button

              const SizedBox(height: 20.0,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    //color: const Color(0xFF29a661),
                  ),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,

                    ),
                      onPressed: () => _submit(),
                      child: Text('Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),)),
                ),
              ),
              //not a member? register now


              const SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('Dont have account? ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontStyle: FontStyle.normal,
                    ),),
                  RichText(
                    text: TextSpan(text: "",style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign Up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => _signup(),

                          ),
                        ]

                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}