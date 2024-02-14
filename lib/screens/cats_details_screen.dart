import 'package:flutter/material.dart';

import '../model/cat.dart';
import '../widgets/cat_details.dart';

class CatsDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatsDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cat.name,
        ),
        backgroundColor: Colors.purple,
      ),
      body: CatDetailsWidget(
        cat: cat,
      ),
    );
  }
}
