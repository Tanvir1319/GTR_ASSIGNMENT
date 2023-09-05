import 'package:go_router/go_router.dart';
import 'package:gtr_assignment/views/onboarding/onboarding_screen.dart';
import 'package:gtr_assignment/views/onboarding/splashscreen/splash_screen.dart';
import 'package:gtr_assignment/views/pages/page2.dart';
import 'package:gtr_assignment/views/pages/ui_fragments/home.dart';

class RouteManager {
  static final routeConfig = GoRouter(
    routes: [
      GoRoute(
          name: RouteNames.SPLASH,
          path: '/',
          builder: (context, state) => const MySplashScreen(),
          
      ),
     
       GoRoute(
          name: RouteNames.PAGE2,
          path: '/${RouteNames.PAGE2}',
          builder: (context, state) =>  GridViewPage(),
          
      ),
       GoRoute(
          name: RouteNames.HOME,
          path: '/${RouteNames.HOME}',
          builder: (context, state) => const HomeFragment(),
          
      ),
    ],
  );
}

abstract class RouteNames {
  static String SPLASH = '/';
    static String ONBOARDING = 'ONBOARDING';
    static String HOME = 'HOME';
 static String PAGE2 = 'GridPage';
  //static String DETAILS = 'details';
}