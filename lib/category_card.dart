import 'package:course_app/category.dart';
import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final int index;
  final VoidCallback onTap;

  const CategoryCard(
      {Key key, @required this.category, @required this.index, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(
        24,
      )),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: index.isEven ? 200 : 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              24,
            ),
            image: DecorationImage(
              image: AssetImage(
                category.image,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.name,
                  style: kTitleTextStyle,
                ),
                Text(
                  "${category.numOfCourses} Courses",
                  style: kSubheadingTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
