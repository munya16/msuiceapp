import 'package:firebase_auth/firebase_auth.dart';
import 'package:ice/src/viewmodel/user.dart';
import 'package:ice/src/router/routerr.dart';
import 'package:ice/src/view/screen/dash_board_screen.dart';
import 'package:ice/src/view/screen/component/auth/login_screen.dart';
//import 'package:ice/src/view/onboarding/onboarding_screen.dart';
import 'package:ice/src/viewmodel/address_viewmodel.dart';
import 'package:ice/src/viewmodel/auth_viemodel.dart';
import 'package:ice/src/viewmodel/bottom_navigate_provider.dart';
import 'package:ice/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ice/src/view/screen/component/myvote/vote_state.dart';
//import 'package:ice/src/services/providers/pollProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => VoteState()),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
        ChangeNotifierProvider(create: (_) => CartViewModel()),
        ChangeNotifierProvider(create: (_) => AddressViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        onGenerateRoute: Routerr.onGenerateRouter,
        home: DashBoardScreen(),
        builder: EasyLoading.init(),

        //  home: StreamBuilder(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //    builder: (context, snapshot) {
        //      if (snapshot.hasData) {
        //        return DashBoardScreen();
        //      } else {
        //         return LoginScreen();
        //      }
        //    },
        //  ),
      ),
    );
  }
}
