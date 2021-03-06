import 'package:flutter/material.dart';
import 'package:interfaces/opciones.dart';
import 'package:interfaces/piecharts.dart';



void main() => runApp(MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
        accentColor: Colors.white,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => App(),
      }
    )
  )
;