import 'package:flutter/material.dart';
import 'dart:convert' as convert ;
import 'package:http/http.dart' as http;

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  var status;
  var aboutUs ;

  @override
  Widget build(BuildContext context) {
    sendRequest();
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text(' About Us'),
      ),

      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5.0,left: 10.0),
            child: Image.asset('images/logoo.png',
              height: 80.0,
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.only(left: 15.0,),
            child: new Text('${aboutUs}'),

          )
        ],
      ),
    );
  }

  void sendRequest() async {
    var url = "https://00a309-makeup-disk.magdsoft.com/api/appInfo";
    // getImagesPaths();
    // Await the http get response, then decode the json-formatted responce.
    var body =convert.json.encode({
//      'apiToken':apiToken.toString(),
      //'nvW51mms069w42EkwjNZgVTfxdVOXkdeP2J962EeBirdqge0lzzkDD38LnUvaDHe',
      'language': "ar",

//      'photos': paths,
//      'type': 'renting',
//      'brand':_brandController.text,
//      'workingHours':_hoursController.text,
//      'numHorses':_horsesController.text,
//      'imageCommitment': image,
//      'voiceCommitment': voice
    });

    print("body: " + body);
    var response = await http.post(url,
        headers: {'Content-type': 'application/json'}, body: body);
    var statusCode = response.statusCode;
    print("Status: " + statusCode.toString());
    if (200 != statusCode) {
      print(response.body);
      return;
    }

    print(response.body);
    var jsonResponse = convert.jsonDecode(response.body);
    status = jsonResponse["status"];
    if(status == 200 ){
//      AppInfo  appInfo = new AppInfo();
      Map<String,dynamic> appInfo = jsonResponse['appInfo'];

      setState(() {
        aboutUs = appInfo['about_us'];
        
      });
    }

    print("ffffffffffffffffffffffffffffffff"+status.toString());

  }
}

class AppInfo{

  var email, phone , about_us , policy_term;
}
