import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home.dart';
import 'pages/location.dart';
import 'pages/loading.dart';

void main() {
  // transparent notification bar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      routes: {
        "/": (context) => const LoadingPage(),
        "/home": (context) => const HomePage(),
        "/location": (context) => const LocationPage(),
      },
    ),
  );
}
