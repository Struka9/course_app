import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'courses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.robotoTextTheme().copyWith(),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: CoursesScreen(),
    );
  }
}

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print("Pressed");
          },
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
        ),
        actions: [
          CircleAvatar(
            child: Image.asset(
              "assets/images/user.png",
            ),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey Oscar,",
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Find a course you want to learn",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontSize: 20,
                    color: Colors.grey[500],
                    letterSpacing: 1.2,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search for anything",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                hintStyle: Theme.of(context).textTheme.subtitle1.copyWith(
                      letterSpacing: 1.2,
                      color: Colors.grey[500],
                    ),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    36,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: kTitleTextStyle,
                ),
                FlatButton(
                  padding: EdgeInsets.all(
                    0.0,
                  ),
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: kTitleTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: kBlueColor,
                    ),
                  ),
                ),
              ],
            ),
            Courses(),
          ],
        ),
      ),
    );
  }
}
