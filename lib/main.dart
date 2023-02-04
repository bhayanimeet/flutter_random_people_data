import 'package:flutter/material.dart';
import 'package:random_people_information/views/screens/homepage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
      },
    ),
  );
}