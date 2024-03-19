import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/screens/components/image_container.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';

class LifeHeader extends StatelessWidget {
  const LifeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.0),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ImageContainer(
                borderRadius: 6.0,
                imageUrl: 'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_6.jpg?raw=true',
                width: 45.0,
                height: 45.0
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                lifeTitle,
                style: textTheme().displayMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
