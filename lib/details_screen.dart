import 'package:course_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F4EE),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow-left.svg",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/more-vertical.svg",
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/ux_big.png",
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: screenHeight * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPath(
                  clipper: BestSellerClipper(),
                  child: Container(
                    color: kBestSellerColor,
                    padding:
                        EdgeInsets.only(left: 5, top: 5, right: 20, bottom: 5),
                    child: Text(
                      "BESTSELLER",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Design Thinking",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        right: 4,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/person.svg",
                        height: 24,
                        width: 24,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      "18k",
                      style: kSubheadingTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 4,
                        top: 8,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/star.svg",
                        height: 24,
                        width: 24,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      "4.8",
                      style: kSubheadingTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$50",
                      style: kTitleTextStyle.copyWith(fontSize: 40),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "\$70",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF61688B),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  50,
                ),
                topLeft: Radius.circular(
                  50,
                ),
              ),
              child: Container(
                height: screenHeight * 0.55,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 32,
                          left: 16,
                          bottom: 20,
                        ),
                        child: Text(
                          "Course Content",
                          style: kTitleTextStyle,
                        ),
                      ),
                      Lesson(
                        number: "01",
                        name: "Welcome to the Course",
                        duration: "5:35",
                      ),
                      Lesson(
                        number: "02",
                        name: "Design Thinking - Intro",
                        duration: "19:04",
                      ),
                      Lesson(
                        number: "03",
                        name: "Design Thinking - Process",
                        duration: "12:48",
                        disabled: true,
                      ),
                      Lesson(
                        number: "04",
                        name: "Customer Perspective",
                        duration: "36:53",
                        disabled: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          36,
                        )),
                        color: Colors.redAccent.withOpacity(0.3),
                        child: SvgPicture.asset(
                          "assets/icons/shopping-bag.svg",
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 16,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            36,
                          ),
                        ),
                        color: kBlueColor,
                        child: Text(
                          "Buy Now",
                          style: kTitleTextStyle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 64,
                          vertical: 16,
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: kElevationToShadow[6],
                  borderRadius: BorderRadius.circular(
                    48,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;
    Path path = Path();

    path.lineTo(0, height);
    path.lineTo(width * 0.8, height);
    path.lineTo(width, height * 0.5);
    path.lineTo(width * 0.8, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class Lesson extends StatelessWidget {
  final String number;
  final String duration;
  final String name;
  final bool disabled;

  const Lesson(
      {Key key, this.number, this.duration, this.name, this.disabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8,
              right: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$duration mins",
                  style: kSubtitleTextStyle.copyWith(
                    color: Color(0xFF61688B),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  name,
                  style: kTitleTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          GestureDetector(
            onTap: disabled
                ? null
                : () {
                    print("tapped");
                  },
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: disabled ? kGreenColor.withOpacity(0.7) : kGreenColor,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
