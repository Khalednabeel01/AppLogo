import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert ;
import 'package:http/http.dart' as http;
class FaqNews extends StatefulWidget {
  @override
  _FaqNewsState createState() => _FaqNewsState();
}

class _FaqNewsState extends State<FaqNews> {



  List answar = new List();
  var status;

  @override
  Widget build(BuildContext context) {
    loadProducts();
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text(' Terms And Condation'),
      ),

      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20.0,left: 10.0),
            child: new Text('Does your company test on animals ?',style: TextStyle(fontSize: 22.0,color:  Color.fromRGBO(247, 190, 197, 1),),),
          ),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.only(left: 15.0,),
            child: new Text('$answar'),
          )
        ],
      ),
    );
  }

//  Future sendRequest1() async {
//    var url = "https://00a309-makeup-disk.magdsoft.com/api/appInfo";
//    // getImagesPaths();
//    // Await the http get response, then decode the json-formatted responce.
//    var body =convert.json.encode({
////      'apiToken':apiToken.toString(),
//      //'nvW51mms069w42EkwjNZgVTfxdVOXkdeP2J962EeBirdqge0lzzkDD38LnUvaDHe',
//      'language': "ar",
//
////      'photos': paths,
////      'type': 'renting',
////      'brand':_brandController.text,
////      'workingHours':_hoursController.text,
////      'numHorses':_horsesController.text,
////      'imageCommitment': image,
////      'voiceCommitment': voice
//    });
//
//    print("body: " + body);
//    var response = await http.post(url,
//        headers: {'Content-type': 'application/json'}, body: body);
//    var statusCode = response.statusCode;
//    print("Status: " + statusCode.toString());
//    if (200 != statusCode) {
//      print(response.body);
//      // return ;
//    }
//
//    print(response.body);
//    var jsonResponse = convert.jsonDecode(response.body);
//    status = jsonResponse["status"];
//    Map<String,dynamic> appInfo = jsonResponse['appInfo'];
//
////    if(status == 200 ){
////      AppInfo  appInfo = new AppInfo();
////          Map<String,dynamic> appInfo = jsonResponse['appInfo'];
////           return  emails = appInfo['email'];
////    }
////    phones = appInfo ['phone'];
////    emails = appInfo['email'];
//
////    return emails.toList();
////    print("ffffffffffffffffffffffffffffffff"+status.toString()+emails.toString());
//
//  }

  Future<List<Product1>> loadProducts() async {
    final response = await http.get('https://00a309-makeup-disk.magdsoft.com/api/getFaqs');
    final jsonResponse = json.decode(response.body);
    final jsonData=jsonResponse['data'];
    ProductsList productsList = ProductsList.fromJson(jsonData);

    var statusCode = response.statusCode;
    print("Status: " + statusCode.toString());
    if (200 != statusCode) {
      print(response.body);
    }

    return productsList.products;
  }
}

class Product1 {
  final String answar;

  Product1({this.answar});

  //we create a factory method to deserialize the json
  factory Product1.fromJson(Map<String, dynamic> json) {
    return new Product1(
        answar: json['answer'].toString()


    );
  }
}
class ProductsList {
  final List<Product1> products;

  ProductsList({this.products});

  factory ProductsList.fromJson(List<dynamic> parsedJson) {

    List<Product1> products = new List<Product1>();
    products = parsedJson.map((i)=>Product1.fromJson(i)).toList();


    return new ProductsList(
      products: products,
    );
  }
}

