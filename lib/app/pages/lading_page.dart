import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:proyecto_coffeui/app/constants/constants.dart';

import 'coffe_page.dart';

class LadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: -70.0,
              child: Image.asset('assets/images/coffee2.png'),
            ),
            Positioned(
              bottom: 0.0,
              left: -70.0,
              child: Image.asset('assets/images/coffee.png'),
            ),
            Positioned(
              child: Image.asset('assets/images/coffee_cup.png'),
              height: 250,
              bottom: 0.0,
              right: -35.0,
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              width: MediaQuery.of(context).size.height,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                height: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 200.0),
                    Text(
                      "Grego \nCoffe - UI",
                      style: TextStyle(
                          color: kTextColor1,
                          fontSize: 34.0,
                          height: 1.3,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Morochooo y cacho , morochoooooo!! ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        height: 1.8,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      /* ScreenUtil: Altamente adaptable al dispositivo de acuerdo con 
                      el diseño de la IU se recomienda utilizar este método para lograr
                      un alto grado de adaptación cuando se encuentra que una pantalla 
                      en el diseño de la IU no coincide con el efecto de estilo actual,
                      o si hay unadiferencia en la forma. */
                      height: ScreenUtil().setHeight(38),
                      child: TextButton(
                        onPressed: () {
                          Get.to(ShopCofee(), transition: Transition.upToDown);
                        },
                        child: Text(
                          "Comprar ahora",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          backgroundColor: Colors.brown[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
