import 'package:flutter/material.dart';
import 'screen/friends.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CET App',
      theme: ThemeData(
        fontFamily: 'Sarabun', // ✅ ฟอนต์หลักทั้งแอป
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App ID:174"),
          backgroundColor: Colors.orange, // ✅ สีหัวข้อแถบ
          centerTitle: true,
        ),
        body: const FriendsScreen(),
      ),
    );
  }
}