import 'package:flutter/material.dart';

import 'Pages/Home_Page.dart';
import 'Pages/Login_Page.dart';
import 'Pages/Subject.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/LoginPage',
      routes: {
        '/MainPage': (context) => HomePage(),
        '/Subject': (context) => Subject(),
        '/LoginPage': (context) => LoginPage(),
      },
    ));
