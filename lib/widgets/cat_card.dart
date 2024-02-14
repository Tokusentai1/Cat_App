import 'package:flutter/material.dart';

import '../model/cat.dart';
import '../screens/cats_details_screen.dart';

class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatsDetailsScreen(cat: cat);
        }));
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                  width: double.infinity, fit: BoxFit.cover, cat.imageLink),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cat.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
