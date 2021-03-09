import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: 300,
                alignment: Alignment.topCenter,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/product1.png',
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.backspace),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: 280,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                height: MediaQuery.of(context).size.height - 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
