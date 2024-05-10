import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:may10/pages/task3/widgets/float_navigation_button.dart';
import 'package:may10/pages/task3/widgets/photo_container.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class VidioMove extends StatefulWidget {
  const VidioMove({super.key});

  @override
  State<VidioMove> createState() => _VidioMoveState();
}

class _VidioMoveState extends State<VidioMove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171e25),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    width: 260.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 77, 89, 106),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 0.05.sw),
                        const Icon(
                          Icons.search_rounded,
                          color: Color.fromARGB(255, 77, 89, 106),
                        ),
                        Text(
                          " Search something here",
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 89, 106),
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  ZoomTapAnimation(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: 55.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 77, 89, 106),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset("assets/icons/filter.svg"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/avatar.webp",
                      reting: "9.8",
                    ),
                  ),
                  SizedBox(width: 13.w),
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_1.jpg",
                      reting: "9.7",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_2.jpg",
                      reting: "9.8",
                    ),
                  ),
                  SizedBox(width: 13.w),
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_3.jpg",
                      reting: "9.7",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_4.jpg",
                      reting: "9.8",
                    ),
                  ),
                  SizedBox(width: 13.w),
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_5.jpg",
                      reting: "9.7",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_6.jpg",
                      reting: "9.8",
                    ),
                  ),
                  SizedBox(width: 13.w),
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/avatar.webp",
                      reting: "9.7",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_2.jpg",
                      reting: "9.8",
                    ),
                  ),
                  SizedBox(width: 13.w),
                  ZoomTapAnimation(
                    child: PhotoContainer(
                      image: "assets/images/page1_3.jpg",
                      reting: "9.7",
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const ActionButton(),
    );
  }
}
