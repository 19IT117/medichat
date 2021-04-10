import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medichat/BMI.dart';
import 'package:medichat/ChatBot.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:provider/provider.dart';
import 'package:medichat/mcq.dart';
import 'input_page.dart';
class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();

}

class _home_pageState extends State<home_page> {
  final title = 'Medi Chat';
  Color primaryColor = Color(0xff18203d);
  Color secondaryColor = Color(0xff232c51);
  Color logoGreen = Color(0xff25bcbb);
  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser;
    return  MaterialApp(
      home: Scaffold(
        /*bottomNavigationBar: CurvedNavigationBar(
          index: selectIndex,
          items: [
            Icon(Icons.home),
            Icon(Icons.chat),
            Icon(Icons.folder),
            Icon(Icons.post_add),
            Icon(Icons.settings),
          ],
          onTap: (index){
            setState(() {
              selectIndex=index;
            });
          },
          animationCurve: Curves.easeInCirc,
          animationDuration: const Duration(milliseconds: 300),
        ),*/
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text(title)),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>chatbot()));
                  },
                  child: Container(
                    width : 170.0,
                    child: new Image.asset('images/chatbot.png'),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: (){

                    Navigator.push(context,MaterialPageRoute(builder: (context)=>InputPage()));
                  },
                    child: Container(
                      width: 170.0,
                      child: new Image.asset('images/bmi.png'),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: (){

                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Quizzler()));
                  },
                child: Container(
                  width: 170.0,
                  child: new Image.asset('images/hra.png'),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              )],
          ),
        ),
      ),
    );
  }
}
