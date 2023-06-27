import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider_use_bloc1/controllers/cart_controller.dart';
import 'package:provider_use_bloc1/models/product_model.dart';

class CatalogProduct extends StatelessWidget {
  const CatalogProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, index) {
            return CatalogProductCard(index: index);
          }),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(Product.products[index].imageUrl),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            Product.products[index].name,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {
              cartController.addProduct(Product.products[index]);
            },
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
    );
  }
}
