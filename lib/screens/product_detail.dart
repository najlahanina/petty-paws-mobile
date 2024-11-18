import 'package:flutter/material.dart';
import 'package:petty_paws/models/product_entry.dart'; // Import model Item untuk digunakan di halaman detail

class ProductDetail extends StatelessWidget {
  final ProductEntry product; // Terima objek Item dari halaman sebelumnya

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        backgroundColor: const Color.fromARGB(255, 116, 45, 88),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price: Rp ${product.fields.price}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8),
            Text(
              'Brand: ${product.fields.brands}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8),
            Text(
              'Category: ${product.fields.categories}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8),
            Text(
              'Description: ${product.fields.description}',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}