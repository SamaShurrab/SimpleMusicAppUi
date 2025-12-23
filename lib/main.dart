import 'package:flutter/material.dart';
import 'package:music_app_ui/constant/colors.dart';
import 'package:music_app_ui/pages/music_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicListPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor,
        fontFamily: "Inter",
      ),
    );
  }
}
