import 'package:flutter/material.dart';
import 'package:meal_app/category_meals_screen.dart';

class Category_item extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const Category_item(this.id, this.color, this.title);

  void screenCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category_meals', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => screenCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
