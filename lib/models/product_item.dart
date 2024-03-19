import 'package:carrot_market/models/Product.dart';

import 'package:flutter/material.dart';

import '../screens/home/components/product_detail.dart';



class ProductItem extends StatelessWidget {
  // 규칙 1 const 생성자는 초기화 되여야 하는 변수는 반드시 상수값이
  // 되어야 한다. const, final
  final Product product;
  const ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
                product.urlToImage,
                width: 115,
                height: 115,
                fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          ProductDetail(product: product),
        ],
      ),
    );
  }
}


