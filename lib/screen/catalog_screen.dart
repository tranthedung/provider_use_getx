import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider_use_bloc1/screen/cart_screen.dart';
import 'package:provider_use_bloc1/widgets/catalog_products.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: const Text(
          'CataLog',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.to(() => CartScreen()),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: [
            CatalogProduct(),
          ],
        ),
      ),
    );
  }
}
