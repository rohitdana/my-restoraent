import 'package:flutter/material.dart';
import 'package:myrestorent_app/dummy.dart';
import 'package:myrestorent_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              catData.id,
              catData.title,
              catData.color,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
      ),
    );
  }
}
