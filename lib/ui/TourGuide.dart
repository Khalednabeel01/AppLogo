import 'package:flutter/material.dart';



class TourGuide extends StatefulWidget {
  @override
  _TourGuideState createState() => _TourGuideState();
}

class _TourGuideState extends State<TourGuide> {

  final items=<Image>[
    Image.asset('images/tourguide3.png'),
    Image.asset('images/tourguide.png'),
    Image.asset('images/tourguide1.png'),
    Image.asset('images/tourguide2.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 190, 197, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text('Tour Guide'),
      ),
      body: DefaultTabController(length: items.length,
          child: Builder(
              builder: (BuildContext context )=> Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    TabPageSelector(),
                    Expanded(
                      child: TabBarView(children: items),
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }
}
