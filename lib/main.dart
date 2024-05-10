import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may10/pages/task1/star.dart';
import 'package:may10/pages/task2/task2.dart';
import 'package:may10/pages/task3/screen1_page/screen1.dart';
import 'package:may10/pages/task3/screen1_page/widgets/buttonPages.dart';
import 'package:may10/pages/task3/task3_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: KinoNameInfo(),
      ),
    );
  }
}

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() {
    return _MyTaskState();
  }
}

class _MyTaskState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(57, 4, 12, 126),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomTapAnimation(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const StarScreen();
                  }),
                );
              },
              child: Container(
                width: 300.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 28, 51, 91),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    "Task1",
                    style: TextStyle(fontSize: 30.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.sp),
            ZoomTapAnimation(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ProductScreen();
                  }),
                );
              },
              child: Container(
                width: 300.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 28, 51, 91),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    "Task2",
                    style: TextStyle(fontSize: 30.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.sp),
            ZoomTapAnimation(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const VidioMove();
                  }),
                );
              },
              child: Container(
                width: 300.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 28, 51, 91),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    "Task3",
                    style: TextStyle(fontSize: 30.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
