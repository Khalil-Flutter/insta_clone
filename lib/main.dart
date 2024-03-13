import 'package:flutter/material.dart';
import 'package:insta_clone/widget/b_n_b_w/navigation_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationContainer(),
    );
  }
}
