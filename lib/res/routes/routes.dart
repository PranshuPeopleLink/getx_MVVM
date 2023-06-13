import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/views/home_page.dart';
import 'package:getx_mvvm/views/splash_screen.dart';

class AppRoute {
  static appRoute() => [
        GetPage(
            name: RouteName.splashScreen,
            page: () => SplashScreen(),
            transition: Transition.leftToRight,
            transitionDuration: Duration(milliseconds: 250)),
            transitionDuration: const Duration(milliseconds: 250)),
        GetPage(
            name: RouteName.loginScreen,
            page: () => HomePage(),
            transitionDuration: Duration(milliseconds: 250))
            transitionDuration: const Duration(milliseconds: 250))
      ];

}
