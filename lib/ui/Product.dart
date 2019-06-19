import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(238, 156, 167, 1),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite), onPressed: null)
        ],
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text('Product'),
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container( height: 60.0,color: Color.fromRGBO(247, 190, 197, 1), ),
              Padding(
                padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
                child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 152, 161, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(right: 50.0,top: 7.0),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                      prefixIcon:Icon(Icons.search,
                        color: Colors.grey ,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0,),
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
                            child: Image.asset('images/black3.png',
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
                            child: Image.asset('images/white.png',
                              height: 130.0,
                              width: 100.0,
                            ),
                          ),
                        ],
                      ),
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
                            child: Image.asset('images/white1.png',
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
                            child: Image.asset('images/red.png',
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
