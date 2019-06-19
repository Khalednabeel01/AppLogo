import 'package:applogo/model/CountryModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:async';

class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override

  String dropdownValue = 'One';
  var status ;
List<CountryModel> countries1=new List<CountryModel>();
 var countries=new List<String>();

  var _countries = ['Saudi arabia','Cairo','Elminia','Other'];
  var CurrentCountry ='Saudi arabia';
  var _Countrytown = ['Saudi arabia','alex','Riad','Other'];
  var town = 'Riad';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 190, 197, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text('Country'),
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                children: <Widget>[
                 Container(
                   padding: EdgeInsets.only(right: 20.0,left: 20,top: 10.0),
                   height: 60.0,
                   child: Stack(
                     children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadiusDirectional.circular(5.0),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.only(left: 20.0),
                          child: DropdownButton<String>(
                            items:_countries.map<DropdownMenuItem<String>>((String DropdownStringItem){
                              return DropdownMenuItem<String>(
                                value: DropdownStringItem,
                                child: Text(DropdownStringItem),
                              );
                            }).toList() ,
                            onChanged: (String newListValue){
                              setState(() {
                                // sendRequest();
                                this.CurrentCountry = newListValue;
                              });
                            },
                            hint: Text('$CurrentCountry'),
                            value: CurrentCountry,
                            elevation: 2,
                            isExpanded: true,
                            iconEnabledColor: Color.fromRGBO(191, 120, 129, 1),
                            iconSize: 50.0,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                      ),
                       SizedBox(height: 20.0,),
                       Container(
                         padding: EdgeInsets.only(right: 20.0,left: 20,top: 10.0),
                         height: 60.0,
                         child: Stack(
                           children: <Widget>[
                             Container(
                               decoration: BoxDecoration(
                                 color: Colors.white70,
                                 borderRadius: BorderRadiusDirectional.circular(5.0),
                               ),
                             ),
                             Container(
                               padding: EdgeInsets.only(left: 20.0),
                               child: DropdownButton<String>(
                                 items:_Countrytown.map((String DropdownString){
                                   return DropdownMenuItem<String>(
                                     value: DropdownString,
                                     child: Text(DropdownString),
                                   );
                                 }).toList() ,
                                 onChanged: (String newList){
                                   setState(() {
                                     this.town = newList;
                                   });
                                 },
                                 value: town,
                                 elevation: 2,
                                 isExpanded: true,
                                 iconEnabledColor: Color.fromRGBO(191, 120, 129, 1),
                                 iconSize: 50.0,
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 20,
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
                ],
              ),
        ],
      ),
    );
}

 Future sendRequest( ) async {
  var url = "https://00a309-makeup-disk.magdsoft.com/api/getCountries";
  var response = await http.post(url,
      body: {
        'language':"ar",
        //'type':'selling',
        //'categoryId':'1',
        //'apiToken': "2q7lk6UMCYVX02DwL80ZltgqJ25wnxXlrLzrzIdVPDkk77H2NlkEoZix4Msp2ti1",
        //'page': '0'
      });
  var jsonResponse = convert.jsonDecode(
      response.body);
  status = jsonResponse["status"];
  print(status);
  List countries0= jsonResponse["countries"];
  print(countries0);
  countries1=CountryModel.fromJsonList(countries0);
  for(CountryModel c in countries1){
    countries.add(c.name.toString());
  }
  print("sssssssssssssssssssssssss"+countries.toString());
  print("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr$status");
  print(jsonResponse.toString());
  return countries;
}

}


