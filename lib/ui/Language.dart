import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  int radiogroup;
  void radioEventHndler(int value){
    setState(() {
      radiogroup=value;
      print(radiogroup);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 190, 197, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text('Country'),
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
               Container(
                 padding: EdgeInsets.only(right: 20.0,left: 20,top: 10.0),
                 height: 60.0,
                 child: Stack(
                   children: <Widget>[
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white70,
                         borderRadius: BorderRadiusDirectional.circular(5.0),
                       ),
                     ),
                     new RadioListTile(
                       value: 1,
                       groupValue: radiogroup,
                       onChanged: radioEventHndler,
                       title: new Text('Arabic'),
                       activeColor: Colors.red,
                     ),
                   ],
                 ),
               ),
                Container(
                  padding: EdgeInsets.only(right: 20.0,left: 20,top: 10.0),
                  height: 60.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadiusDirectional.circular(5.0),
                        ),
                      ),
                      new RadioListTile(
                        value: 2,
                        groupValue: radiogroup,
                        onChanged: radioEventHndler,
                        title: new Text('English'),
                        activeColor: Colors.blue,
                      ),
                    ],
                  ),

                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}


