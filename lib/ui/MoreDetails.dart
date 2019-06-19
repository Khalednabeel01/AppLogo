import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor:Color.fromRGBO(247, 190, 197, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text(' More'),
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _homeList('images/notification5.png'),
          _hommeList('images/notifiaction2.png'),
          _homeetislatList('images/notification3.png'),
          _homewaterList('images/notification4.png'),
        ],
      ),
    );
  }

  _homeList(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
      child: Container(
        height: 80.0,
        child: InkWell(child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(5.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.centerLeft,
              child: Image.asset('images/notification5.png',
                width: 30.0,
                height: 30.0,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 60.0,),
              child: ListTile(
                title: new Text('there is New Discount',
                  style: TextStyle(fontSize: 15.0,color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                ),
                subtitle: new Text('20/8/2019'),

              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/Country');},
        ),
      ),
    );
  }

  _hommeList(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
      child: Container(
        height: 80.0,
        child: InkWell(child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(5.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.centerLeft,
              child: Image.asset('images/notifiaction2.png',
                width: 30.0,
                height: 30.0,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 60.0,),
              child: ListTile(
                title: new Text('there is New add',
                  style: TextStyle(fontSize: 15.0,color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                ),
                subtitle: new Text('20/8/2019'),

              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/Country');},
        ),
      ),
    );
  }


  _homeetislatList(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
      child: Container(
        height: 80.0,
        child: InkWell(child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(5.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.centerLeft,
              child: Image.asset('images/notification3.png',
                width: 30.0,
                height: 30.0,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 60.0,),
              child: ListTile(
                title: new Text('there is New shops have a look now',
                  style: TextStyle(fontSize: 15.0,color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                ),
                subtitle: new Text('20/8/2019'),

              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/Country');},
        ),
      ),
    );
  }


  _homewaterList(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
      child: Container(
        height: 80.0,
        child: InkWell(child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(5.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.centerLeft,
              child: Image.asset('images/notification4.png',
                width: 30.0,
                height: 30.0,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 60.0,),
              child: ListTile(
                title: new Text('there is New add',
                  style: TextStyle(fontSize: 15.0,color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                ),
                subtitle: new Text('20/8/2019'),

              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/Country');},
        ),
      ),
    );
  }
}
