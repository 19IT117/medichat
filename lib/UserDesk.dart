import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Google_sign_in.dart';

class UserDesk extends StatefulWidget {
  @override
  _UserDeskState createState() => _UserDeskState();
}

class _UserDeskState extends State<UserDesk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: Container(
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey.shade400,
                ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(child: CircleAvatar(backgroundColor: Colors.black)),
                    Expanded(child: Column(
                      children: <Widget>[
                        Expanded(child: Text('Name')),
                        Expanded(child: Text('Viraj')),
                        Expanded(child: Text('Email'))
                      ],
                    )),
                  ],
                ),
              )
            )),
             ElevatedButton(
              onPressed: () {
                final provider =
                Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: Text('Logout'),
            ),
            Expanded(child: Container(
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey.shade400,
                ),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(child: CircleAvatar(backgroundColor: Colors.black)),
                      Expanded(child: Column(
                        children: <Widget>[
                          Expanded(child: Text('Name')),
                          Expanded(child: Text('Viraj')),
                          Expanded(child: Text('Email'))
                        ],
                      )),
                    ],
                  ),
                )
            )),

          ],
        ),
      ),
    );
  }
}
