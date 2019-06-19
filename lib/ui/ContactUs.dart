import 'dart:convert' as convert ;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {


  var status1;
  var aboutUs ;
 // static List emails=["demo@magdsoft.com", "demo@magdsoft.com", "khaled@magdsoft.com"];
  static List emails= new List();
  static List phones = new List();
  var mobile;
  bool _validate = false;
  var status;
  static TextEditingController _nameController = new TextEditingController();
  static TextEditingController _phoneController = new TextEditingController();
  static TextEditingController _mailController = new TextEditingController();
  static TextEditingController _detailsController = new TextEditingController();

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Image.asset('images/success1.png',height: 50.0,width: 50.0,),
                Center(child: new Text('You message has been'),),
                Center(child: new Text(' sent successfully'),),

              ],
            ),
          ),
          actions: <Widget>[
            InkWell(
              child:  Container(
              height: 60.0,
              width:MediaQuery.of(context).size.width - 100.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 190, 197, 1),
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 1.0,
                    color: Colors.white70,
                  )
              ),
               child:Center(child:  new Text('Send',
                style: TextStyle(fontSize: 20.0),
              ),
              ),
            ),
              onTap:(){ Navigator.of(context).pop();} ,
            ),
          ],
        );
      },
    );
  }


  @override
  void initState() {
    //sendRequest1();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


   return FutureBuilder(
      future: sendRequest1() , // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {

          case ConnectionState.none:
            return Text('Press button to start.');
            break;
          case ConnectionState.none:
            return Text('Loading....');
            break;
          default:
            if (snapshot.hasError)
            return Text('Error: ${snapshot.error}');

//           return Text('Result: ${snapshot.data}');

            // sendRequest1();
            return new Scaffold(
              backgroundColor: Color.fromRGBO(247, 190, 197, 1),
              appBar: AppBar(
                backgroundColor: Color.fromRGBO(247, 190, 197, 1),
                centerTitle: true,
                title: new Text('Contact Us'),
              ),
              body: new ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[

                  Container(
                    height: 150.0,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(child: Column(
                              children: <Widget>[

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[

                                    Container(
                                      padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
                                      child: Text('E-mail', style: TextStyle(
                                        color: Color.fromRGBO(
                                            247, 190, 197, 1),),),
                                    ),


                                        Container(
                                            height: 70,
                                            width: 150,
                                            child: ListView.builder(
                                              // shrinkWrap: true,
                                                itemCount: emails.length,
                                                itemBuilder: (
                                                    BuildContext context,
                                                    int position) {
                                                  return
                                                    Text(emails[position]
                                                        .toString());
                                                })
                                        ),

                                  ],
                                ),
                              ],
                            ),
                            ),


//                            SizedBox(width: 50.0,),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      child: Center(child: new Text('|'),)
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 30.0,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.only(top: 20.0,),
                                  child: Text('Phone', style: TextStyle(
                                    color: Color.fromRGBO(
                                        247, 190, 197, 1),),),
                                ),

                                Container(
                                    height: 90,
                                    width: 100,
                                  padding: EdgeInsets.only(top: 20.0,),
                                  child:  ListView.builder(
                                    // shrinkWrap: true,
                                      itemCount: phones.length,
                                      itemBuilder: (
                                          BuildContext context,
                                          int position) {
                                        return
                                          Text(phones[position]
                                              .toString());
                                      })
                                ),

                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20.0,),
                      Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 50.0,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white70,
                            )
                        ),
                        child: TextField(
                          controller: _nameController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 5.0),
                            hintText: 'Full Name ',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 50.0,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white70,
                            )
                        ),
                        child: TextField(
                          controller: _phoneController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 5.0),
                            hintText: 'Mobile Number ',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 50.0,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white70,
                            )
                        ),
                        child: TextField(
                          controller: _mailController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 5.0),
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        alignment: Alignment.topCenter,
                        height: 120.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 50.0,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            border: Border.all(
                              style: BorderStyle.solid,
                              width: 1.0,
                              color: Colors.white70,
                            )
                        ),
                        child: TextField(
                          controller: _detailsController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            errorText: _validate
                                ? "Length of message must be at least 10 digits "
                                : null,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 10.0),
                            hintText: ' Details ',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      InkWell(child: Container(
                        alignment: Alignment.topCenter,
                        height: 60.0,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 50.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white70,
                            )
                        ),
                        child: Center(child: new Text('Send',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        ),
                      ),
                          onTap: () {
                            String details = _detailsController.text.toString();
                            sendRequest();
                            if (details.length >= 10) {
                              sendRequest();
                              setState(() {
                                _validate = false;
                              });
                            }
                            else {
                              setState(() {
                                _validate = true;
                              });
                              //Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("Length of message must be at least 10 digits ")));
                            }
                          }
                      ),
                    ],
                  ),
                ],
              ),
            );
        }
        },

    );
  }

  void sendRequest() async {
    var url = "https://00a309-makeup-disk.magdsoft.com/api/contact";
    // getImagesPaths();
    // Await the http get response, then decode the json-formatted responce.
    var body =convert.json.encode({
//      'apiToken':apiToken.toString(),
      //'nvW51mms069w42EkwjNZgVTfxdVOXkdeP2J962EeBirdqge0lzzkDD38LnUvaDHe',
      'name': _nameController.text,
      'phone': _phoneController.text,
      'email': _mailController.text,
      'message': _detailsController.text,
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

    if(status == 200){

      _nameController.text="";
      _phoneController.text="";
      _mailController.text="";
      _detailsController.text="";

      _neverSatisfied();

    }
    print("ffffffffffffffffffffffffffffffff"+status.toString());

  }









 Future sendRequest1() async {
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
     // return ;
    }

    print(response.body);
    var jsonResponse = convert.jsonDecode(response.body);
    status = jsonResponse["status"];
    Map<String,dynamic> appInfo = jsonResponse['appInfo'];

//    if(status == 200 ){
//      AppInfo  appInfo = new AppInfo();
//          Map<String,dynamic> appInfo = jsonResponse['appInfo'];
//           return  emails = appInfo['email'];
//    }
  phones = appInfo ['phone'];
  emails = appInfo['email'];

//    return emails.toList();
    print("ffffffffffffffffffffffffffffffff"+status.toString()+emails.toString());

  }
}

class AppInfo{

  var email, phone , about_us , policy_term;
}

