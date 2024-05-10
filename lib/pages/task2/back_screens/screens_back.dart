import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may10/pages/task2/widgets/containers.dart';

class BackScreen
 extends StatelessWidget {
  const BackScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(89, 78, 99, 202),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
        child: Column(
          children: [
            ContainerProducts(
              text1: "Smartfon Tecno Spark Go 2024",
              text2: " 4/64GB 4/128GB,",
              text3: " DTS stereodinamiklari, 2Nano-SIM",
              image: "assets/images/phone.jpg",
            ),
            SizedBox(height: 50.h),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Tecno Spark 20 bilan uslub va yorqinlikni chiqaring! Ushbu smartfon mobil nafislik dunyosida sizning ishonchli hamrohingiz bo'ladi. Tecno Spark 20 smartfoni bilan uslub va zavqning yangi darajalarini kashf eting, bu sizning har lahzada o'ziga xosligingizni ta'kidlaydi. Tecno Spark 20 bilan g'oyalaringizni amalga oshiring va turmush tarzingizni oshiring – kundalik sarguzashtlarda ajoyib hamrohingiz!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Tecno Spark 20 bilan birga o'zining ko'zni qamashtiruvchi ko'k rangi va noyob Eko Magic Skin bilan yaratilgan orqa qopqog'ida dunyoni maftun eting. Ushbu san'at asarini qo'lingizda ushlab, har bir lahzaning sehrini his eting.",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text:
                          " Zaryad haqida tashvishlanmang-Tecno Spark 20 kuchli 5000 mAh batareya bilan jihozlangan bo'lib, u uzoq batareyaning ishlash muddatini kafolatlaydi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),

              // " "
            )
          ],
        ),
      ),
    );
  }
}
