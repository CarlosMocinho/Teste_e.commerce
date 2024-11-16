import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  final double rating;

  const ProductRating({super.key, required this.rating});
  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      if (i <= rating) {
        stars.add(const Icon(Icons.star, color: Colors.amber));
      } else if (i - 0.5 == rating) {
        stars.add(const Icon(Icons.star_half, color: Colors.amber));
      } else {
        stars.add(const Icon(Icons.star_border, color: Colors.amber));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the stars
      children: stars,
    );
  }
}
