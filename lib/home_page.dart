import 'package:flutter/material.dart';
import 'package:medichat/BMI.dart';
import 'package:medichat/ChatBot.dart';
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
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text(title)),
          backgroundColor: secondaryColor,
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

                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BMI()));
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
            ],
          ),
        ),
      ),
    );
  }
}
