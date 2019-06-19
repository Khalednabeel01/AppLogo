import 'package:flutter/material.dart';
import 'dart:async';
import 'SplashScreen.dart';




class MyLogo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyLogoState();
  }
}


class _MyLogoState extends State<MyLogo>{
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
        seconds: 3),
            (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen(),),);
        }
    );
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Color.fromRGBO(247, 190, 197, 1)),
            ),
            Container(
              child:Image.asset('images/background.png'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Stack(
                        children: <Widget>[


                        ],
                      ),
                    )
                )
              ],
            ),
          ],
        )
    );
  }
}