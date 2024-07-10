import 'package:film/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Icon(
                    Icons.format_align_left_sharp,
                    color: Color(0xFF110E47),
                    size: 30,
                  ),
                  SizedBox(width: 120.w),
                  Text(
                    'FilmKu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF110E47),
                      fontSize: 23.sp,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 100.w),
                  Icon(
                    Icons.notification_add_outlined,
                    color: Color(0xFF110E47),
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  Text(
                    'Now Showing',
                    style: TextStyle(
                      color: Color(0xFF110E47),
                      fontSize: 18.sp,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  Container(
                    width: 80.w,
                    height: 31.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFE5E4EA)),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'See more',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFAAA8B0),
                          fontSize: 16.sp,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 500,
              height: 300,
              child: ListView.separated(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, position) {
                  return Container(
                    width: 190,
                    height: 250,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 220.w,
                          height: 225.h,
                          child: TextButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2())); },
                          child: Image.asset('assets/a.png')),
                        ),
                        Text(
                          'Spiderman: No Way\nHome',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Muli',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: 0.28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 1,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 1,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
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
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 12,
                                  fontFamily: 'Muli',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, position) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: Color(0xFF110E47),
                      fontSize: 18.sp,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                  ),
                  Container(
                    width: 80.w,
                    height: 31.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFE5E4EA)),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'See more',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFAAA8B0),
                          fontSize: 16.sp,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 500,
              height: 2100,
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, position) {
                  return Container(
                    width: 150,
                    height: 250,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            child: TextButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2())); },
                              child: Image.asset(
                                'assets/a.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 50),
                                child: Text(
                                  'Spiderman: No Way\nHome',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Muli',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                    letterSpacing: 0.28,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 40),
                                child: Row(
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 20,
                                      initialRating: 1,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 1,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    Text(
                                      '9.1/10 IMDb',
                                      style: TextStyle(
                                        color: Color(0xFF9B9B9B),
                                        fontSize: 12,
                                        fontFamily: 'Muli',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.24,
                                      ),
                                    ),
                                    //
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 68,
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 4),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFDBE3FF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'ACTION',
                                          style: TextStyle(
                                            color: Color(0xFF87A3E8),
                                            fontSize: 10,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: 0.16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Container(
                                      width: 68,
                                      height: 30,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 4),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFDBE3FF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Action',
                                          style: TextStyle(
                                            color: Color(0xFF87A3E8),
                                            fontSize: 10,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: 0.16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40,top: 15),
                                child: Row(
                                  children: [
                                    Icon(Icons.access_time_rounded,size:30,),
                                    Text( '1h 47m',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.24,
                                      ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, position) {
                  return SizedBox(
                    height: 10.h,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
