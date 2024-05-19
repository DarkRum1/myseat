import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myseat/pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      title: 'MySeat',
      home: Homepage()
    );
  }
}