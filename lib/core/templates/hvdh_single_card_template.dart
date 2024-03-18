import 'package:flutter/material.dart';
import 'package:heiko_flashcard/core/style/app_sizes.dart';

class HvdhCardTemplate extends StatelessWidget {
  final String title;
  final StatelessWidget root;

  const HvdhCardTemplate({
      super.key,
      this.title = "",
      required this.root
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
          ),
      body: SingleChildScrollView (
        child: Align(
            alignment: Alignment.center,
          child: Padding(
          padding: const EdgeInsets.all(AppSizes.r_16),
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 100, //minimum height
              minWidth: 300, // minimum width
              maxHeight: 400,
              //maximum height set to 100% of vertical height
              maxWidth: 500,
            ),
            child: Column(
              children: [root],
            ),
          ),
        ),
      ),
      ),
    );

  }
}