import 'package:flutter/material.dart';
import 'package:uisecondproject/screen/dashboardpage.dart';
import 'package:uisecondproject/screen/tab_bar.dart';
import 'package:uisecondproject/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    );
  }
}
