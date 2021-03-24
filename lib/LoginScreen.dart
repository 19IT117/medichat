import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medichat/SignUp_Page.dart';
import 'package:medichat/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
final FirebaseAuth firebaseAuth=FirebaseAuth.instance;
final GoogleSignIn googleSignIn=GoogleSignIn();

class _LoginScreenState extends State<LoginScreen> {
  Color primaryColor=Color(0xff18203d);
  Color secondaryColor=Color(0xff232c51);
  Color logoGreen=Color(0xff25bcbb);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          body :Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 80.0,fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                      child: Text(
                        "There.",
                        style: TextStyle(
                            fontSize: 80.0,fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0,left: 20.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>home_page()));
    },
                      child: Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.greenAccent,
                          color: Colors.green,
                          elevation: 7.0,
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home_page()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0
                            ),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.google),
                              SizedBox(width: 10.0),
                              Center(
                                  child: Text(
                                    'Sign In with Google',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'New here?',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(width: 5.0),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                      },
                      child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          )
                      )
                  ),
                ],
              )
            ],
          )
      ),
            );
  }

  }

