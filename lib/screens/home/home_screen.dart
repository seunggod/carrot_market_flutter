import 'package:carrot_market/models/Product.dart';
import 'package:carrot_market/models/product_item.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('좌동'),
            const SizedBox(width:4.0),
            const Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.search)),
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: const PreferredSize(preferredSize: Size.fromHeight(0.5),
            child: Divider(thickness: 0.5, height: 05, color: Colors.grey,),
        ),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          ),
          itemBuilder: (context, index) {
            return ProductItem(
                product: productList[index]);
          },
          itemCount: productList.length
      ),
    );
  }
}