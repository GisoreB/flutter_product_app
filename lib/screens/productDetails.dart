import 'package:flutter/material.dart';
import 'package:flutter_product_app/model/productmodel.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel productModel;
  final String text;
  final String subtext;
  final String image;
  const ProductDetails(
      {super.key,
        required this.productModel,
        required this.text,
        required this.subtext,
        required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(image),
            ListTile(
              title: Text(text),
              subtitle: Text(subtext),
            )
          ],
        ),
      ),
    );
  }
}