import 'package:carrot_market/screens/main_screen.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: theme(),
    );
  }
}

