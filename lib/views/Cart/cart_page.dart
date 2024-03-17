import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_feeder/view_model/cart_page_vm.dart';
import 'package:pet_feeder/views/HomePage/designs/product_grid.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartPageViewModel>(builder: (context, controller, child) {
      return Scaffold(
        bottomSheet: Container(
          color: Colors.white,
          width: double.infinity,
          height: 50.h,
          child: Row(
            children: [
              Text(
                "Total Amount :- ${controller.totalAmount}",
                style: TextStyle(color: Colors.black, fontSize: 10.sp),
              ),
              Spacer(),
              MaterialButton(
                  color: Colors.green,
                  height: 40.h,
                  minWidth: 200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Buy Now",
                      style: TextStyle(color: Colors.black, fontSize: 8.sp)),
                  onPressed: () {})
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Icon(
                       Icons.shopping_cart,
                       size: 40.h,
                     ),
                    Text("Cart",
                    style: TextStyle(
                      fontSize: 8.sp,
                      color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                     ],
                     ),
                   /*children: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                   Text("Bag------Address-------Payment",
                   style: TextStyle(
                       fontSize: 7.sp,
                       color: Color.fromARGB(255, 0, 0, 0)),
                       ),
                     ],
                   ),*/
        ),
        body:
            Consumer<CartPageViewModel>(builder: (context, controller, child) {
          if (controller.products.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag,
                    size: 40.h,
                  ),
                  Text("No Item in cart",
                  style: TextStyle(
                      fontSize: 7.sp,
                      color: Color.fromARGB(255, 0, 0, 0)),),
                ],
              ),
            );
          } else {
            return Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      Product product = controller.products[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                      width: 100,
                                      product.imageUrl,
                                      height: 100,
                                      fit: BoxFit.contain),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          product.name,
                                          style: TextStyle(fontSize: 6.sp),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Rs.${product.price}",
                                          style: TextStyle(
                                              fontSize: 6.sp,
                                              color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                      );
                    })
              ],
            );
          }
        }),
      );
    }
    );
    }
    }

