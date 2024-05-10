import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may10/pages/task2/back_screens/screens_back.dart';
import 'package:may10/pages/task2/widgets/containers.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() {
    return _MyProductState();
  }
}

class _MyProductState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 78, 98, 202),
      body: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              ZoomTapAnimation(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const BackScreen();
                    }),
                  );
                },
                child: ContainerProducts(
                  text1: "Smartfon Tecno Spark Go 2024",
                  text2: " 4/64GB 4/128GB,",
                  text3: " DTS stereodinamiklari, 2Nano-SIM",
                  image: "assets/images/phone.jpg",
                ),
              ),
              SizedBox(height: 30.sp),
              ZoomTapAnimation(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const BackScreen();
                    }),
                  );
                },
                child: ContainerProducts(
                  text1: "Noutbuk Lenovo Intel Celeron",
                  text2: " N4020, 4GB, DDR4, 256GB SSD 15.6,",
                  text3: " Windows va ofis o'rnatilgan",
                  image: "assets/images/laptop.jpg",
                ),
              ),
              SizedBox(height: 30.sp),
              ZoomTapAnimation(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const BackScreen();
                    }),
                  );
                },
                child: ContainerProducts(
                  text1: "Televizor Volto Smart",
                  text2: " 32\" (HD) 43\" ",
                  text3: " (Full HD) narxiga arziydi",
                  image: "assets/images/televizor.jpg",
                ),
              ),
              SizedBox(height: 30.sp),
              ZoomTapAnimation(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const BackScreen();
                    }),
                  );
                },
                child: ContainerProducts(
                  text1: "Aqlli smart soat X5 Pro Premium,",
                  text2: " ikkinchi tasma sovg'a sifatida,",
                  text3: " IOS uchun, Android 46 mm",
                  image: "assets/images/wath.jpg",
                ),
              ),
            ],
          )),
    );
  }
}
