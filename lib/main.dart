// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:googleclone/shared/constants.dart';
import 'package:googleclone/tabsview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone App',
      theme: ThemeData(scaffoldBackgroundColor: kwhite),
      home: const Tabs(),
      routes: {
        Tabs.routeName: (context) => const Tabs(),
      },
    );
  }
}
