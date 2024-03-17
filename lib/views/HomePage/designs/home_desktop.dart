import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_feeder/utils/app_images.dart';
import 'package:pet_feeder/utils/themes/app_color.dart';
import 'package:pet_feeder/views/HomePage/designs/contact_us_page.dart';
import 'package:pet_feeder/views/HomePage/designs/home_header.dart';
import 'package:pet_feeder/views/HomePage/designs/how_to_take_care.dart';
import 'package:pet_feeder/views/HomePage/designs/product_grid.dart';

class HomeDekstop extends StatelessWidget {
  HomeDekstop({super.key});
  List<GlobalKey> scrollkeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey()
  ];
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(
                key: scrollkeys[0],
                callBack: (value) {
                  if (value == 3) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => ContactUsPage()));
                    return;
                  }
                  Scrollable.ensureVisible(scrollkeys[value].currentContext!);
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  children: [
                    Image.asset(
                      pngdog,
                      width: 80.w,
                      height: 80.w,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Welcomes You",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 6.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Where Tails and Treasures Collide! At TailTreasures,we're more than just an online doggy emporium; we're a community of passionate pet enthusiasts dedicated to making tails wag and providing your furry friends with the finest treasures. Our journey began with a simple love for dogs and a commitment to enhancing the lives of our canine companions.",
                            style: TextStyle(fontSize: 4.sp),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Our Mission: -",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 6.sp),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "At the heart of TailTreasures is a mission to offer a curated selection of high-quality products that cater to the unique needs and desires of dogs. Whether your pup is a playful adventurer, a pampered pooch, or a loyal companion, we have carefully chosen a range of items to suit every tail-wagging personality.",
                            style: TextStyle(fontSize: 4.sp),
                          ),
                          SizedBox(
                            height: 110.h,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Our Products ",
                style: TextStyle(fontSize: 8.sp),
              ),
              Container(
                key: scrollkeys[1],
                child: ProductGrid(),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "New to pet world read our articles.",
                style: TextStyle(fontSize: 8.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(key: scrollkeys[2], child: TakeCareGrid()),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
