import 'package:flutter/material.dart';

import 'data/all_cats.dart';
import 'model/cat.dart';
import 'screens/cats_home_screen.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CatsHomeScreen(),
    );
  }
}
