import 'package:flutter/material.dart';
import 'package:webshop/components/products_grid.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({super.key});

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Shop'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: OrientationBuilder(
          builder: (context, orientation) {
            return Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              radius: Radius.circular(5),
              trackVisibility: true,
              interactive: true,
              child: ProductsGrid(
                orientation: orientation,
              ),
            );
          },
        ),
      ),
    );
  }
}
