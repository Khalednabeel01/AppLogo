import 'package:flutter/material.dart';

class MoreOption extends StatefulWidget {
  @override
  _MoreOptionState createState() => _MoreOptionState();
}

class _MoreOptionState extends State<MoreOption> {
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

              _homeList('images/flag1.png'),
              _hommeList('images/earth.png'),
              _homeetislatList('images/paper.png'),
              _homewaterList('images/help.png'),
              _homeaddidasList('images/information.png'),
              _homelearnList('images/smartphon.png'),
              _homecultureList('images/sign.png'),

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
              child: Image.asset('images/flag1.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 80.0,),
              child: Text('Country and City',
                style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(19, 159, 141, 1),
                    fontWeight: FontWeight.normal
                ),
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
              child: Image.asset('images/earth.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 80.0,),
              child: Text('Language',
                style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(19, 159, 141, 1),
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/Language');},
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
              child: Image.asset('images/paper.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 80.0,),
              child: Text('Contact Us',
                style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(19, 159, 141, 1),
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/ContactUs');},
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
              child: Image.asset('images/help.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 80.0,),
              child: Text('About Us',
                style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(19, 159, 141, 1),
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/AboutUs');},
        ),
      ),
    );
  }

  _homeaddidasList(String imgPath){
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
              child: Image.asset('images/information.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 80.0,),
              child: Text('FAQ’s',
                style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(19, 159, 141, 1),
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/Faqs');},
        ),
      ),
    );
  }

  _homelearnList(String imgPath ){
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
              child: Image.asset('images/smartphon.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 80.0,),
              child: Text('How to Use this App',
                style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(19, 159, 141, 1),
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/TourGuide');},
        ),
      ),
    );
  }


  _homecultureList(String imgPath ){
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
              child: Image.asset('images/sign.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 80.0,),
              child: Text('Terms and Condations',
                style: TextStyle(fontSize: 20.0,color: Color.fromRGBO(19, 159, 141, 1),
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        ),
          onTap: (){Navigator.of(context).pushNamed('/TermsAndCondation');},
        ),
      ),
    );
  }
}
