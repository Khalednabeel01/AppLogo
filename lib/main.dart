import 'package:applogo/ui/AboutUs.dart';
import 'package:applogo/ui/ContactUs.dart';
import 'package:applogo/ui/FAQS.dart';
import 'package:applogo/ui/FaqNews.dart';
import 'package:applogo/ui/HomeLogo.dart';
import 'package:applogo/ui/Language.dart';
import 'package:applogo/ui/MakeUpMaster.dart';
import 'package:applogo/ui/MoreDetails.dart';
import 'package:applogo/ui/MoreOption.dart';
import 'package:applogo/ui/MyFavorite.dart';
import 'package:applogo/ui/Product.dart';
import 'package:applogo/ui/ProductOne.dart';
import 'package:applogo/ui/SplashScreen.dart';
import 'package:applogo/ui/TermsAndCondation.dart';
import 'package:applogo/ui/TourGuide.dart';
import 'package:applogo/ui/Country.dart';
import 'package:flutter/material.dart';

void main() {

runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppLogo',
      routes: <String,WidgetBuilder>{

        '/Product':(BuildContext context) => new Product(),
        '/MakeUpMaster':(BuildContext context) => new MakeUpMaster(),
        '/ProductOne':(BuildContext context) => new ProductOne(),
        '/MoreOption':(BuildContext context) => new MoreOption(),
        '/MyFavorite':(BuildContext context) => new MyFavorite(),
        '/ContactUs':(BuildContext context) => new ContactUs(),
        '/TourGuide':(BuildContext context) => new TourGuide(),
        '/AboutUs':(BuildContext context) => new AboutUs(),
        '/Faqs':(BuildContext context) => new Faqs(),
        '/TermsAndCondation':(BuildContext context) => new TermsAndCondation(),
        '/FaqNews':(BuildContext context) => new FaqNews(),
        '/Country':(BuildContext context) => new Country(),
        '/Language':(BuildContext context) => new Language(),
        '/MoreDetails':(BuildContext context) => new MoreDetails(),
        '/SplashScreen':(BuildContext context) => new SplashScreen(),


      },
      home: new FaqNews(),
    );
  }
}
