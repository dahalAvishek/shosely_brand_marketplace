import 'package:flutter/material.dart';
import 'package:shoesly_brand_marketplace/core/icons/icomoon_icons.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: double.maxFinite,
          child: Text(
            'Discover',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icomoon.bag,
                color: Theme.of(context).colorScheme.primary,
              ))
        ],
      ),
      body: Container(),
    );
  }
}
