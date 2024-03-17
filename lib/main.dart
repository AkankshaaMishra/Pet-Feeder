import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_feeder/view_model/cart_page_vm.dart';
import 'package:pet_feeder/view_model/home_page_vm.dart';
import 'package:pet_feeder/views/HomePage/home_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => HomePageViewModel()),
            ChangeNotifierProvider(create: (_) => CartPageViewModel())
          ],
          
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Pet Fedder',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          ),
        );
      },
      child: const PetHomePage(),
    );
    
  }
}
