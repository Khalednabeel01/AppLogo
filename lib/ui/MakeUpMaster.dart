import 'package:flutter/material.dart';


class MakeUpMaster extends StatefulWidget {
  @override
  _MakeUpMasterState createState() => _MakeUpMasterState();
}

class _MakeUpMasterState extends State<MakeUpMaster> {
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
            child: Text('Contacts Details',textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15.0),
                  child: Image.asset('images/maps.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey,),
                  ),
                  ),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 50.0,bottom: 10.0,),
                  child: Text('الرياض - المملكة العربية السعودية',textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15.0),
                  child: Image.asset('images/paper.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey,),
                  ),
                  ),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 50.0,bottom: 10.0,),
                  child: Text('الرياض - 11577',textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15.0),
                  child: Image.asset('images/call.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey,),
                  ),
                  ),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 50.0,bottom: 10.0,),
                  child: Text('011-4070100',textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15.0),
                  child: Image.asset('images/fax1.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey,),
                  ),
                  ),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 50.0,bottom: 10.0,),
                  child: Text('011-7040030',textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15.0),
                  child: Image.asset('images/message.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey,),
                  ),
                  ),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 50.0,bottom: 10.0,),
                  child: Text('vat@housing-sa',textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
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
