import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ContainerProducts extends StatelessWidget {
  late String text1;
  late String text2;
  late String text3;
  late String image;

  ContainerProducts({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  image,
                  width: 120.w,
                  height: 160.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: text1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                      TextSpan(
                        text: text2,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16.sp,
                        ),
                      ),
                      TextSpan(
                        text: text3,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
