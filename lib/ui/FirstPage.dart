import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      backgroundColor:Color.fromRGBO(247, 190, 197, 1),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Padding(padding: EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(child: InkWell(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 150.0),
                              height: 200.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Text('LUMINOUS SILK FOUNDATION',textAlign: TextAlign.center,style: TextStyle(
                                color: Color.fromRGBO(238, 156, 167, 1),
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20.0,left: 20.0),
                              child: Image.asset('images/black.png',
                                height: 130.0,
                                width: 100.0,
                              ),
                            ),
                          ],
                        ),
                        onTap: (){Navigator.of(context).pushNamed('/MakeUpMaster');},
                      ),
                      ),

                      SizedBox(width: 15.0,),
                      Container(child: InkWell(
                        child:Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 150.0),
                              height: 200.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Text('LUMINOUS SILK FOUNDATION',textAlign: TextAlign.center,style: TextStyle(
                                color: Color.fromRGBO(238, 156, 167, 1),
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20.0,left: 20.0),
                              child: Image.asset('images/red.png',
                                height: 130.0,
                                width: 100.0,
                              ),
                            ),
                          ],
                        ),
                        onTap: (){Navigator.of(context).pushNamed('/ProductOne');},
                      ),),

                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 150.0),
                            height: 200.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Text('LUMINOUS SILK FOUNDATION',textAlign: TextAlign.center,style: TextStyle(
                              color: Color.fromRGBO(238, 156, 167, 1),
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20.0,left: 20.0),
                            child: Image.asset('images/black1.png',
                              height: 130.0,
                              width: 100.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.0,),
                      Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 150.0),
                            height: 200.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Text('LUMINOUS SILK FOUNDATION',textAlign: TextAlign.center,style: TextStyle(
                              color: Color.fromRGBO(238, 156, 167, 1),
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20.0,left: 20.0),
                            child: Image.asset('images/red1.png',
                              height: 130.0,
                              width: 100.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
