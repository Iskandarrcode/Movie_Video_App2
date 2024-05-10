import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class PhotoContainer extends StatelessWidget {
  late String image;
  late String reting;
  PhotoContainer({super.key, required this.image, required this.reting});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
          padding: const EdgeInsets.all(7),
          alignment: Alignment.topCenter,
          width: 160.w,
          height: 230.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 30.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    reting,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
