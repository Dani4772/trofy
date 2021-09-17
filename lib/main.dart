import 'package:flutter/material.dart';
import 'package:trofy/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'trofy',
      debugShowCheckedModeBanner: false,
      home: First_Screen(),
    );
  }
}

class First_Screen extends StatelessWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF009cff),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(child: Image.asset('images/trofyLogo.png')),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Email or UserName',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Enter Email or User Name',
                  hintStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide(width: 2, color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(width: 2, color: Colors.transparent),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Email Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide(width: 2, color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(width: 2, color: Colors.transparent),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Align(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white),
                ),
                alignment: Alignment.topRight),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Second_Screen()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                height: 50,
                width: 600,
                decoration: BoxDecoration(
                    color: Color(0xFFffbb00),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
                children: [
                  Expanded(
                      child: Container(
                         margin: EdgeInsets.only(left: 20,right: 10),
                          child: Divider(
                            color: Colors.white,

                          ))
                  ),

                  Text("OR"),

                  Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 10,right: 20),
                          child: Divider(
                            color: Colors.white,
                          ))
                  ),

                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'Create New Account',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
