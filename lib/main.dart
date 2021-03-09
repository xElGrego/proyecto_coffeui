import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_coffeui/app/constants/constants.dart';

import 'app/pages/lading_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //ScreenUtilInit: Widget que ayuda a configurar el 
    //tamaño y fuente de la pantalla.
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        defaultTransition: Transition.cupertino,
        home: LadingPage(),
        debugShowCheckedModeBanner: false,
        title: 'Grego Coffe - UI',
        theme: ThemeData(
          scaffoldBackgroundColor: kFadedScaffoldColor,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
      ),
    );
  }
}
