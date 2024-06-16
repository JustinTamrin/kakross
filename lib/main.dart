import 'package:flutter/material.dart';
import 'package:kakross/view/signinview.dart';
import 'package:kakross/view/splashview.dart';
import 'constants/route.dart';

void main() {
  runApp(MaterialApp(
      title: 'Hello',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashView(),
      routes: {
        splashView: (context) => const SplashView(),
        loginView: (context) => const SignInView(),
      }));
}
