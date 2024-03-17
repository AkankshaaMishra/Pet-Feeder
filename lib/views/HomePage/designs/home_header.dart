import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_feeder/utils/app_images.dart';
import 'package:pet_feeder/view_model/home_page_vm.dart';
import 'package:pet_feeder/views/Cart/cart_page.dart';
import 'package:provider/provider.dart';

class HomeHeader extends StatelessWidget {
  Function(int index) callBack;
  HomeHeader({super.key, required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500.h,
      child: Stack(
        children: [
          CustomCarouselSlider(
            height: 500.h,
            items: [
              CarouselItem(
                image: Image.asset(
                  pngbackground,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ).image,
              ),
              CarouselItem(
                image: Image.asset(
                  pngbackground2,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ).image,
              )
            ],
            width: double.infinity,
            autoplay: true,
            showText: false,
            showSubBackground: false,
            indicatorShape: BoxShape.rectangle,
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Positioned(
            top: 130.h,
            left: 100.h,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "THE BEST FOR \nOUR BEST FRIENDS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: 30.w,
                    height: 3.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Find the best products for your favorite pups.\nKeep their hearts young, happy and playful.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 4.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50.h,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Image.asset(
                        logo,
                      ),
                      SizedBox(
                        width: 50.w,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        child: Consumer<HomePageViewModel>(
                            builder: (context, controller, child) {
                          return ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.options.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                      onTap: () async {
                                        // Navigator.of(context).push(
                                        //     MaterialPageRoute(
                                        //         builder: (_) =>
                                        //             ProductDetails()));
                                        callBack(index);
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5.w,
                                            ),
                                            child: Text(
                                              controller.options[index]
                                                      .optionName ??
                                                  "",
                                              style: TextStyle(
                                                  fontSize: 4.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ))),
                                );
                              });
                        }),
                      )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => CartPage()));
                          },
                          child: Icon(Icons.shopping_cart)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
