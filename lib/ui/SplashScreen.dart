import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 190, 197, 1),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10.0,),
                    child: Image.asset('images/logoo.png',
                      height: 100.0,
                      width: 100.0,
                    ),
                  ),
              InkWell(
                child:Container(
                  padding: EdgeInsets.only(top: 40.0,left: 20.0),
                  alignment: Alignment.topLeft,
                  child: Image.asset('images/notification1.png',
                    height: 30.0,
                    width: 30.0,
                    color: Colors.white,
                  ),
                ),
                onTap: (){Navigator.of(context).pushNamed('/MoreDetails');},
              )

            ],
          ),


         _homeList('images/advertis.png',),
          _homeList1('images/makeup.png',),
          _homeList2('images/perfume.png',),

          SizedBox(height: 20.0,),
          Padding(padding: EdgeInsets.only(top: 75.0),
            child: Container(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color:Color.fromRGBO(191, 120, 129, 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
              ),
              child: Stack(
                children: <Widget>[
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(child: Column(
                        children: <Widget>[
                          InkWell(child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(

                                padding: EdgeInsets.only(top: 30.0,),
                                child: Image.asset('images/share.png',
                                  height: 30.0,
                                  width: 30.0,
                                ),
                              ) ,
                              Container(
                                padding: EdgeInsets.only(top: 20.0,),
                                child:  Text('More',style: TextStyle(color: Colors.white),) ,
                              ) ,
                            ],
                          ),
                            onTap: (){Navigator.of(context).pushNamed('/MoreOption');},
                          ),
                        ],
                      ),
                      ),

                        SizedBox(width: 50.0,),
                      Container(
                        child: Column(
                        children: <Widget>[
                          InkWell(child: Column(children: <Widget>[Container(
                            padding: EdgeInsets.only(top: 30.0,),
                            child: Image.asset('images/redcard.png',
                              height: 30.0,
                              width: 30.0,
                            ),
                          ),

                            Container(
                              padding: EdgeInsets.only(top: 20.0,),
                              child:  Text('Complains',style: TextStyle(color: Colors.white),) ,
                            ),
                          ],
                          ),
                            onTap: (){Navigator.of(context).pushNamed('/ContactUs');},
                          ),

                        ],
                      ),
                        ),

                      SizedBox(width: 50.0,),
                      Container(
                        child: Column(
                          children: <Widget>[
                            InkWell(child: Column(children: <Widget>[Container(
                              padding: EdgeInsets.only(top: 30.0,),
                              child: Image.asset('images/like.png',
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),

                              Container(
                                padding: EdgeInsets.only(top: 20.0,),
                                child:  Text('Favorits',style: TextStyle(color: Colors.white),) ,
                              ),
                            ],
                            ),
                              onTap: (){Navigator.of(context).pushNamed('/MyFavorite');},
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          )
        ],
     ) ,
   );
 }


 _homeList(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Stack(
        children: <Widget>[
          Container(
            child:
           InkWell(child:Container(
             child: Image.asset('images/advertis.png',
                width: MediaQuery.of(context).size.width ,
                height: 95.0 ,
                fit: BoxFit.cover,
              ),
            ),
             onTap: (){},
            ),
         ),
       ],
      ),
    );
  }

  _homeList1(String imgPath){
    return Padding(
      padding: EdgeInsets.only(top: 40.0,),
      child: InkWell(
        child:Container(
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Container(
                child: Image.asset('images/makeup.png',
                  width: MediaQuery.of(context).size.width - 40.0 ,
                  height: 130.0 ,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ) ,
        onTap: (){Navigator.of(context).pushNamed('/Product');},
      ),
    );
  }

  _homeList2(String imgPath){
    return Padding(
      padding: EdgeInsets.only(top: 30.0,left: 20.0),
      child: InkWell(
        child:Container(
          child: Stack(
            children: <Widget>[
              Container(
                child: Image.asset('images/perfume.png',
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 130.0 ,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ) ,
        onTap: (){},
      ),
    );

  }


}
