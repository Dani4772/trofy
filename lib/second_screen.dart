import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trofy/third_screen.dart';


class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  _Second_ScreenState createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  PageController _pageController = PageController(initialPage: 0);

  int index = 0;
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF009cff),
        elevation: 0,
        leading: Icon(Icons.chevron_left),
        title: Image.asset('images/trofyLogo.png'),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.person),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
         child:  Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 15),
               child: Row(

       children: [
               CircleAvatar(
                 backgroundColor: index==0 ||index>=1 ?Colors.red:Colors.grey,
                 radius: 10,
               ),
               Expanded(

                   child: Divider(
                     color: Colors.black,

                   )),
               CircleAvatar(
                 backgroundColor: index>=1?Colors.red:Colors.grey,

                 radius: 10,
               ),
               Expanded(

                   child: Divider(
                     color: Colors.black,

                   )),
               CircleAvatar(
                 backgroundColor: index>=2?Colors.red:Colors.grey,

                 radius: 10,
               ),

       ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Expanded(
                     child: Text(
                         'Name'
                     ),
                   ),
                   Spacer(),
                   Expanded(
                     child: Text(
                         'D.O.B'
                     ),
                   ),
                   Spacer(),
                   Expanded(
                     child: Text(
                         'Zip Code'
                     ),
                   ),
                 ],
               ),
             ),
             Expanded(
               flex: 7,
               child: PageView(
                 controller: _pageController,
                 onPageChanged: (int move){
                   index=move;
                   setState(() {

                   });
                 },
                 children: [
                   Name(),
                   Date(),
                   Zip_Code(),
                 ],
               ),
             ),


          index==0 || index==1?   Padding(
               padding: const EdgeInsets.only(bottom: 20),
               child: GestureDetector(

                 onTap: (){
                   _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);

                 },
                 child: Container(
                   child: Center(
                     child: Text(
                       'Next',
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
             ):
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Third_screen()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Submit',
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
          )

           ],
         ),
      )
    );
  }
}

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                      'First Name'
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                      'Last Name'
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
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
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Alternative Name'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
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


        ],
      ),
    );
  }
}

class Date extends StatelessWidget {
  const Date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Favourite ChildHood Brand'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
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
              padding: const EdgeInsets.only(top: 20),
              child: Text('Date of Birth'),
            ),

          ],
        ),
      ),
    );
  }
}

class Zip_Code extends StatelessWidget {
  const Zip_Code({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Email'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
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
              padding: const EdgeInsets.only(top: 20),
              child: Text('Postal Code'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
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

          ],
        ),
      ),
    );
  }
}
