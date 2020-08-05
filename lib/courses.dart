import 'package:course_app/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'category.dart';
import 'category_card.dart';

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => StaggeredTile.fit(
          1,
        ),
        crossAxisCount: 2,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
          index: index,
          onTap: index == 1
              ? () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailsScreen();
                  }));
                }
              : null,
        ),
        mainAxisSpacing: 25.0,
        crossAxisSpacing: 25.0,
      ),
    );
  }
}
