import 'package:flutter/material.dart';
import 'package:webshop/pages/product_overview_page.dart';
import 'package:provider/provider.dart';
import 'package:webshop/providers/products_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        title: 'Chicken Shop',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const ProductOverviewPage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Shop'),
      ),
      body: Center(
        child: Text('Lets eat some chicken'),
      ),
    );
  }
}
