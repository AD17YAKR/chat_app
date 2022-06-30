import 'package:chat_app/utils/color.dart';
import 'package:chat_app/views/Home_Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'views/Landing_Page/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

//292F3F
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          // ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              builder: (context, child) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child!);
              },
              home: Home_Screen(),
              theme: ThemeData(
                //

                //
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                  ),
                ),
                //

                //
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: primaryColor,
                ),
                primaryColor: Colors.grey,
                //

                //
                appBarTheme: AppBarTheme(
                  color: appBarColor,
                  toolbarTextStyle: TextStyle(color: Colors.white),
                ),
                //

                //

                scaffoldBackgroundColor: Colors.white,
                textTheme: ThemeData.light().textTheme,
                buttonTheme: ButtonThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  buttonColor: Colors.purple,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  /* return ScreenUtilInit(
    
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_Screen(),

        //
        theme: ThemeData(
          //

          //
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
            ),
          ),
          //

          //
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: primaryColor,
          ),
          primaryColor: Colors.grey,
          //

          //
          appBarTheme: AppBarTheme(
            color: appBarColor,
            toolbarTextStyle: TextStyle(color: Colors.white),
          ),
          //

          //

          scaffoldBackgroundColor: Colors.white,
          textTheme: ThemeData.light().textTheme,
          buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            buttonColor: Colors.purple,
          ),
        ),
      ),
    ); */
}
