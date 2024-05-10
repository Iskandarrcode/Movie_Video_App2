import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_half_sharp,
              color: Colors.deepPurple,
            ),
            SizedBox(width: 8.w),
            const Text("9.8", style: TextStyle(color: Colors.deepPurple)),
            SizedBox(width: 8.w),
            Text("2022", style: TextStyle(color: Colors.grey.shade400)),
            SizedBox(width: 8.w),
            ZoomTapAnimation(
              child: Container(
                padding: const EdgeInsets.only(left: 6, right: 6),
                height: 23.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: Center(
                  child: Text(
                    "13+",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.w),
            ZoomTapAnimation(
              child: Container(
                padding: const EdgeInsets.only(left: 6, right: 6),
                height: 23.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: Center(
                  child: Text(
                    "United States",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.w),
            ZoomTapAnimation(
              child: Container(
                padding: const EdgeInsets.only(left: 6, right: 6),
                height: 23.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: Center(
                  child: Text(
                    "Subtitle",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            ZoomTapAnimation(
              child: Container(
                  width: 160.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.w),
                      const Text("Play", style: TextStyle(color: Colors.white))
                    ],
                  )),
            ),
            SizedBox(width: 10.w),
            ZoomTapAnimation(
              child: Container(
                  width: 160.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.file_download_outlined,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(width: 10.w),
                      const Text("Download",
                          style: TextStyle(color: Colors.deepPurple))
                    ],
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
