import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gtr_assignment/controllers/onborading_provider.dart';
import 'package:gtr_assignment/data/gridView_Provider.dart';
import 'package:gtr_assignment/router/router_manger.dart';

import 'package:gtr_assignment/views/onboarding/onboarding_screen.dart';
import 'package:gtr_assignment/views/onboarding/splashscreen/splash_screen.dart';
import 'package:gtr_assignment/views/onboarding/widgets/page_one.dart';
import 'package:gtr_assignment/views/onboarding/widgets/page_two.dart';
import 'package:provider/provider.dart';

void main()  {
  
 
  runApp(
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardNotifier(),),
        ChangeNotifierProvider(create: (context) => GridViewProvider(),)
        
        
  ], 
   child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
        builder: (_ , child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'GTR Assignment',
          
         
          routerConfig: RouteManager.routeConfig,
        );
      },
     
    );
  }
}