import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/cat_card.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cats"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: cats.length,
          itemBuilder: (context, index) {
            final cat = cats[index];
            return CatCard(cat: cat);
          }),
    );
  }
}
