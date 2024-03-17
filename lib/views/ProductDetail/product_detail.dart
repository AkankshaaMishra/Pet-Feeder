import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_feeder/view_model/cart_page_vm.dart';
import 'package:pet_feeder/views/HomePage/designs/product_grid.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  ProductDetails({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Image.network(product.imageUrl,
                    width: 400, height: 400, fit: BoxFit.contain),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${product.name}",
                        style: TextStyle(fontSize: 7.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Rating ${product.productRating}",
                        style: TextStyle(fontSize: 5.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Rs. ${product.price}', // Replace with actual price
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${product.description}", // Replace with actual description
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              context
                                  .read<CartPageViewModel>()
                                  .addProductToCart(product: product);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                  'Product added to cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.green,
                              width: 40.w,
                              height: 40.h,
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
