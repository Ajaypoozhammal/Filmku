import 'package:film/UI/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  child: Image.asset("assets/b.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Screen1()));
                          },
                          child: Icon(Icons.arrow_back,
                              size: 35, color: Colors.white)),
                      SizedBox(
                        width: 250.w,
                      ),
                      Icon(Icons.more_horiz, size: 35, color: Colors.white)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: Container(
                    width: 375.w,
                    height: 600.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300, left: 30),
                  child: Row(
                    children: [
                      Text(
                        'Spiderman: No Way\nHome',
                    style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.40,
                      )
                        ),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Icon(
                        Icons.bookmark_border_sharp,
                        size: 40,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 360),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: 1,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 1,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '9.1/10 IMDb',
                        style: GoogleFonts.mulish(
                          textStyle: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.24,
                        ),
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400, left: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 78.w,
                        height: 30.h,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: ShapeDecoration(
                          color: Color(0xFFDBE3FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'ACTION',
                            style: GoogleFonts.mulish(
                              textStyle: TextStyle(
                              color: Color(0xFF87A3E8),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 78.w,
                        height: 30.w,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: ShapeDecoration(
                          color: Color(0xFFDBE3FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Action',
                            style: GoogleFonts.mulish(
                              textStyle: TextStyle(
                              color: Color(0xFF87A3E8),
                              fontSize: 10.sp,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 78.w,
                        height: 30.h,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: ShapeDecoration(
                          color: Color(0xFFDBE3FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Action',
                            style: GoogleFonts.mulish(
                              textStyle: TextStyle(
                              color: Color(0xFF87A3E8),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 450, left: 30),
                  child: Row(
                    children: [
                      Text(
                        'Length',
                    style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                      ),
                        ),
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      Text(
                        'Language',
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                        ),
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      Text(
                        'Roting',
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        )
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 470, left: 25),
                  child: Row(
                    children: [
                      Text(
                        '2h 28min',
                    style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                      ),
                        ),
                      ),
                      SizedBox(
                        width: 64.w,
                      ),
                      Text(
                        'English',
                        style: GoogleFonts.mulish(
                          textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.24,
                        ),
                      ),
                      ),
                      SizedBox(
                        width: 75.w,
                      ),
                      Text(
                        'PG-13',
                        style: GoogleFonts.mulish(
                          textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 520, left: 20),
                  child: Text(
                    'Description',
                    style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                      color: Color(0xFF110E47),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.32,
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 550, left: 20),
                  child: Text(
                    "With Spider-Man's identity now revealed, Peter asks\n Doctor Strange for help. When a spell goes wrong\n dangerous foes from other worlds start to appear\n forcing Peter to discover what it truly means to be\n Spider-Man.",
                    style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                      color: Color(0xFF9B9B9B),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 680, left: 30),
                  child: Row(
                    children: [
                      Text(
                        'Cast',
                    style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                          color: Color(0xFF110E47),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                      ),
                      SizedBox(
                        width: 185.w,
                      ),
                      Container(
                        width: 80.w,
                        height: 31.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFE5E4EA)),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'See more',
                            style: GoogleFonts.mulish(
                              textStyle:TextStyle(
                              color: Color(0xFFAAA8B0),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 730),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 120.h,
                            width: 80.w,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: Image.asset(
                                  "assets/c.png",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: Text(
                              'Tom Holland',
                              style: GoogleFonts.mulish(
                                textStyle: TextStyle(
                                color: Color(0xFF110E47),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                )
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w,),
                      Stack(
                        children: [
                          Container(
                            height: 120.h,
                            width: 80.w,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: Image.asset(
                                  "assets/d.png",
                                ),
                              ),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90,left: 10),
                            child: Text(
                              'Zendaya',
                              style: GoogleFonts.mulish(
                                textStyle: TextStyle(
                                color: Color(0xFF110E47),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.24,
                              ),),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 10.w),
                      Stack(
                        children: [
                          Container(
                            height: 120.h,
                            width: 80.w,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: Image.asset(
                                  "assets/e.png",
                                ),
                              ),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:86,left: 1),
                            child: Text(
                              'Benedict\nCumberbatch',
                              style: GoogleFonts.mulish(
                                textStyle: TextStyle(
                                color: Color(0xFF110E47),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 10.w,),
                      Stack(
                        children: [
                          Container(
                            height: 120.h,
                            width: 80.w,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: Image.asset(
                                  "assets/f.png",
                                ),
                              ),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 85,left: 20),
                            child: Text(
                              'Jacon\nBatalon',
                              style: GoogleFonts.mulish(
                                textStyle: TextStyle(
                                color: Color(0xFF110E47),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),)
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
