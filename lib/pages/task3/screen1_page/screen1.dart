import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:may10/pages/task3/screen1_page/widgets/buttonPages.dart';
import 'package:may10/pages/task3/screen1_page/widgets/contakts.dart';
import 'package:may10/pages/task3/screen1_page/widgets/icons_section.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KinoNameInfo extends StatefulWidget {
  const KinoNameInfo({super.key});

  @override
  State<KinoNameInfo> createState() => _KinoNameInfoState();
}

class _KinoNameInfoState extends State<KinoNameInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff171e25),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                alignment: Alignment.topCenter,
                width: double.infinity,
                height: 0.4.sh,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/avatar.webp"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Avatar:The Way of\nWater",
                          style: GoogleFonts.quicksand(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ZoomTapAnimation(
                              child: SizedBox(
                                width: 25.w,
                                height: 25.h,
                                child: Image.asset(
                                  "assets/icons/bookmark.png",
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            ZoomTapAnimation(
                              child: SizedBox(
                                width: 25.w,
                                height: 25.h,
                                child: Image.asset(
                                  "assets/icons/send.png",
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    IconsWidget(),
                    SizedBox(height: 20.h),
                    Text(
                      "Genre:Action,Superhero,Science Fiction,Romance,Thriller,...",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    SizedBox(height: 10.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ContactUsers(
                            image: "assets/images/user1.jpeg",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                          SizedBox(width: 20.w),
                          ContactUsers(
                            image: "assets/images/user2.jpg",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                          SizedBox(width: 20.w),
                          ContactUsers(
                            image: "assets/images/user3.webp",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                          SizedBox(width: 20.w),
                          ContactUsers(
                            image: "assets/images/user4.jpeg",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),

                    /// [Tabbar section]
                    const TabBar(
                      dividerColor: Color(0xff565656),
                      dividerHeight: 2,
                      indicatorColor: Color(0xff820FE1),
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            "Trailers",
                            style: TextStyle(
                                color: Color(0xff820FE1), fontSize: 18),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "More Like",
                            style: TextStyle(
                                color: Color(0xff820FE1), fontSize: 17),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Comment",
                            style: TextStyle(
                                color: Color(0xff820FE1), fontSize: 18),
                          ),
                        ),
                      ],
                    ),

                    // Expanded(
                    //   child: TabBarView(
                    //     children: [
                    //       Text("data"),
                    //       Text("data"),
                    //       Text("data"),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
