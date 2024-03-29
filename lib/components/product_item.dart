import 'package:flutter/material.dart';
import 'package:webshop/pages/product_detail_page.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  const ProductItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
  });

  static const snackBar = SnackBar(
    content: Text('Succesvol toegevoegd aan favorieten!'),
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
          title: Text(
            title,
          ),
          backgroundColor: Colors.black54,
          trailing: Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: const Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          )),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(
                title: title,
                id: id,
                imageUrl: imageUrl,
                price: price,
              ),
            ),
          );
        },
        child: Hero(
          tag: imageUrl,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
