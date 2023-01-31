import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  const ProductDetailPage({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Hero(
          tag: imageUrl,
          child: Image.network(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
