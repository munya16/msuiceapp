import 'package:ice/src/router/router_path.dart';
import 'package:ice/src/view/screen/component/devotionals/audios.dart';
import 'package:ice/src/view/screen/service.dart';
import 'package:ice/src/view/screen/component/auth/forgot_pass_screen.dart';
import 'package:ice/src/view/screen/component/auth/login_screen.dart';
import 'package:ice/src/view/screen/component/devotionals/sermon.dart';
import 'package:ice/src/view/screen/donate.dart';
import 'package:ice/src/view/screen/component/devotionals/vsong.dart';
import 'package:ice/src/view/screen/component/auth/register_screen.dart';
import 'package:ice/src/view/screen/component/auth/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ice/src/view/screen/component/sidebar/pagetwo.dart';
import 'package:ice/src/view/screen/component/sidebar/page1.dart';
import 'package:ice/src/view/screen/component/sidebar/page3.dart';
import 'package:page_transition/page_transition.dart';

class Routerr {
  static RouteFactory onGenerateRouter = (RouteSettings settings) {
    switch (settings.name) {
      case Adios:
        return _generateMaterialRoute(Adio());
      case Sermons:
        return _generateMaterialRoute(Sermon());
      case Songs:
        return _generateMaterialRoute(Song());
      case Pagetwos:
        return _generateMaterialRoute(Pagetwo());
      case Pageone:
        return _generateMaterialRoute(Page1());
      case Pagethree:
        return _generateMaterialRoute(Page3());
      case SplashScreens:
        return _generateMaterialRoute(SplashScreen());
      case LoginScreens:
        return _generateMaterialRoute(LoginScreen());
      case RegisterScreens:
        return _generateMaterialRoute(RegisterScreen());
      case ForgotPasswordScreens:
        return _generateMaterialRoute(ForgotPassScreen());
      case Services:
        return _generateMaterialRoute(Servic());
      case Donations:
        return _generateMaterialRoute(Donate());
      default:
        return _generateMaterialRoute(Center(
          child: Text(
            "On Unknown Router",
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),
          ),
        ));
    }
  };
}

PageTransition _generateMaterialRoute(Widget screen) {
  return PageTransition(child: screen, type: PageTransitionType.fade);
}
