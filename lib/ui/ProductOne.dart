import 'package:flutter/material.dart';







class ProductOne extends StatefulWidget {
  @override
  _ProductOneState createState() => _ProductOneState();
}

class _ProductOneState extends State<ProductOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite), onPressed: null)
        ],
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text('MakeUp Master'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0,left: 10.0),
                child: Image.asset('images/share1.png',
                  height: 35.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width ,
                child: Image.asset('images/makeup.jpg',
                  height: 120.0,
                  width: MediaQuery.of(context).size.width ,
                ),
              ),
            ],
          ),

          SizedBox(height: 10.0,),
          Stack(
            children: <Widget>[
              Container(child: Image.asset('images/dollar.png',
                height: 30.0,
                width: 30.0,
              ),),
              Container(
                padding: EdgeInsets.only(left: 25.0),
                child: Text('50',textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 25.0,color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.only(top: 10.0,left: 20.0,right: 15.0),
            child: Text('LUMINOUS SILK FOUNDATION',textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(247, 190, 197, 1),
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 1.0,),
          Container(
            padding: EdgeInsets.only(top: 1.0,left: 20.0,right: 15.0),
            child: Text('LUMINOUS SILK FOUNDATIONLUMINOUS SILK FOUNDATIONLUMINOUS SILK FOUNDATIONLUMINOUS SILK FOUNDATIONLUMINOUS SILK FOUNDATION',textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 17.0,
                color: Color.fromARGB(70, 70, 70, 1),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0,left: 20.0,right: 15.0),
            child: Text('Shop',textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child:  Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 150.0),
                  height: 200.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Text('Makeup Master',textAlign: TextAlign.center,style: TextStyle(
                    color: Color.fromRGBO(238, 156, 167, 1),
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0,left: 20.0),
                  child: Image.asset('images/makeup.jpg',
                    height: 130.0,
                    width: 100.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0,left: 20.0,right: 15.0),
            child: Text('Tags',textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.only(left: 15.0,),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color:  Color.fromRGBO(224, 152, 161, 1),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                      ),
                      child:Text('NEW',style: TextStyle(fontSize: 13.0,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 10.0,),
                Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  width: 70,
                  decoration: BoxDecoration(
                    color:  Color.fromRGBO(224, 152, 161, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  child:Text(' MAKEUP',style: TextStyle(fontSize: 13.0,
                    color: Colors.white,
                  ),
                  ),
                ),

                SizedBox(width: 10.0,),
                Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 152, 161, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  child:Text('SKINCARE',style: TextStyle(fontSize: 13.0,
                    color: Colors.white,
                  ),
                  ),
                ),

                SizedBox(width: 10.0,),
                Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 152, 161, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  child:Text('FRAGRANSES',style: TextStyle(fontSize: 13.0,
                    color: Colors.white,
                  ),
                  ),
                ),
              ],
            ),
          ),





          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.only(left: 15.0,),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      width: 80,
                      decoration: BoxDecoration(
                        color:  Color.fromRGBO(224, 152, 161, 1),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                      ),
                      child:Text('GIFTS',style: TextStyle(fontSize: 13.0,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 10.0,),
                Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  width: 110,
                  decoration: BoxDecoration(
                    color:  Color.fromRGBO(224, 152, 161, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  child:Text(' ARMANI PRIVE',style: TextStyle(fontSize: 13.0,
                    color: Colors.white,
                  ),
                  ),
                ),

                SizedBox(width: 10.0,),
                Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  width: 125,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 152, 161, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  child:Text('DISCOVER ARMANI',style: TextStyle(fontSize: 13.0,
                    color: Colors.white,
                  ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Container(
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 80.0,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(206, 206, 206, 1),
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
                      contentPadding: EdgeInsets.only(top: 5.0),
                      hintText: 'https//vat.housing.sa',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0,left: 190.0),
                  child: Image.asset('images/link.png',height: 20.0,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
