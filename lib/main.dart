import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ocr_app/screens/home.dart';
import 'package:ocr_app/screens/ocr.dart';
import 'package:ocr_app/screens/onboarding.dart';
import 'package:ocr_app/screens/profile_abhel.dart';
import 'package:ocr_app/screens/profile_edwin.dart';
import 'package:ocr_app/screens/profile_rafi.dart';
import 'package:ocr_app/screens/profile_abun.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.black,
      ),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OCR',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/onboarding',
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new Home(),
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/profile_edwin":(BuildContext context) => new ProfileEdwin(),
          "/profile_rafi": (BuildContext context) => new ProfileRafi(),
          "/profile_abun": (BuildContext context) => new ProfileAbun(),
          "/profile_abhel": (BuildContext context) => new ProfileAbhel(),
          //menambahkan root baru
          // "/profile_examples": (BuildContext context) => new ProfileExamples()
          // buat file baru di folder /screens dengan nama file "profile_nama.dart"
          // kemudian edit bagian CardSmall / CardHorizontal pada file yang ada di directory /screens/home.dart


          "/home_page": (BuildContext context) => new MyPage(),
        });
  }
}
