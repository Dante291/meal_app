import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/category_item.dart';

// ignore: camel_case_types
class Category_screen extends StatelessWidget {
  const Category_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 50, 50, 50),
      body: GridView(
          physics: const BouncingScrollPhysics()
              .applyTo(const AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2.5 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DUMMY_CATEGORIES
              .map((catDATA) =>
                  Category_item(catDATA.id, catDATA.color, catDATA.title))
              .toList()),
    );
  }
}
