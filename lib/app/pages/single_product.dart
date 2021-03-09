import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_coffeui/app/constants/constants.dart';

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
              top: 290,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                height: MediaQuery.of(context).size.height - 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Iced and Chilled Coffee",
                      style: TextStyle(
                        color: kTextColor1,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Latte with Almond Milk",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Este cafe tiene distintos sabores y debido a su preparación asdalsdjlaskjdaksjdlasjdajsdlkajsdlkjaslkdjaslkdjalksjdalskjdlasjdlakjsdklajsldjasldkjalsdjalsjdljalskdjaksjdlsjdajsdlakjsdlkjasldjkj',
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextColor1.withOpacity(.8),
                      ),
                    ),
                    Divider(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cantidad",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "4",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Divider(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ammount playable",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "5.90",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size(350, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.brown.withOpacity(.4),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add my car",
                          style: TextStyle(
                            color: Colors.white,
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
