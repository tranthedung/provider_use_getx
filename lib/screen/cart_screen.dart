import 'package:flutter/material.dart';
import 'package:provider_use_bloc1/widgets/cart_products.dart';
import 'package:provider_use_bloc1/widgets/catalog_products.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Cart',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CartProducts(),
          ],
        ),
      ),
    );
  }
}