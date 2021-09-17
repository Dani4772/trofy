import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Third_screen extends StatelessWidget {
  const Third_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF009cff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF009cff),
        centerTitle: true,
        title: Image.asset("images/trofyLogo.png"),
        actions: [
          Icon(Icons.youtube_searched_for),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.people),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellowAccent, shape: BoxShape.circle),
                child: Image.asset(
                  "images/face2.png",
                  width: 120,
                  height: 120,
                )),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                  "images/face1.png",
                                  width: 60,
                                  height: 60,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Points'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                    "images/face2.png",
                                    width: 60,
                                    height: 60,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Status'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Author Description',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                      "The oldest classical Greek and Latin writing had little or no space"
                      " between words and could be written in boustrophedon (alternating directions). "
                      "Over time, text direction (left to right) became standardized, and word dividers"
                      " and terminal punctuation became common. The first way to divide sentences into"
                      " groups was the original paragraphs, similar to an underscore at the beginning o"
                      "f the new group.[2] The Greek parágraphos evolved into the pilcrow (¶), which in E"
                      "nglish manuscripts in the Middle Ages can be seen inserted inline between sentences."
                      " The hedera leaf (e.g. ☙) has also been used in the same way In ancient manuscripts, "
                      "another mean to divide sentences into paragraphs was a line break (newline) followed by an initial at the beginning of the next paragraph. An initial is an oversized capital letter, sometimes outdented beyond the margin of the text. This style can be seen, for example, in the original Old English manuscript of Beowulf. Outdenting is still used in English typography, though not commonly.[3] Modern English typography usually indicates a new paragraph by indenting the first line. This style can be seen in the (handwritten) United States Constitution from 1787. For additional ornamentation, a hedera leaf or other symbol can be added "
                      "to the inter-paragraph white space, or put in the indentation space."),
                ],
              )),
            ),
          ),
        ],
      ),
bottomNavigationBar:           Container(
  color: Colors.white,
  child: Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        )),
    child: ListTile(

      leading: Icon(Icons.search),
      title: Image.asset('images/trofyLogo.png',height: 30,),
      trailing: Icon(Icons.person),
    ),
  ),
),
              drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
                width: double.infinity,
                color: Color(0XFF009cff),
                child: Image.asset("images/trofyLogo.png")),

            Listtile(data: 'Home', iconn: Icons.person),
            Divider(indent: 20,endIndent: 20,),
            Listtile(data: 'Projects', iconn: Icons.image),
            Divider(indent: 20,endIndent: 20,),
            Listtile(data: 'People', iconn: Icons.people),
            Divider(indent: 20,endIndent: 20,),
            Listtile(data: 'Place', iconn: Icons.place),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 30),
              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
                  onPressed: (){},
                  icon: Icon(Icons.power_settings_new_rounded),
                  label: Text('Logout')),
            ),
          ],
        ),
      ),
    );
  }
}

class Listtile extends StatelessWidget {
  final String data;
  final IconData iconn;
  const Listtile({required this.data,required this.iconn,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ListTile(
        hoverColor: Colors.cyan,
        leading: Container(
          child: CircleAvatar(
              backgroundColor: Colors.yellow[100],
              child: Icon(iconn,color: Colors.yellow[600],)),
        ),
        title: Text(data,style: TextStyle(fontWeight: FontWeight.bold),),

      ),
    );
  }
}
