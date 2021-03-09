import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:proyecto_coffeui/app/constants/constants.dart';
import 'package:proyecto_coffeui/app/widgets/coffe_listing.dart';
import 'package:proyecto_coffeui/data/controllers/cafes_controller.dart';
import 'package:proyecto_coffeui/data/models/cafes.dart';

class ShopCofee extends StatelessWidget {
  final _controller = CafeController();
  List<Widget> pages = [
    CoffeListing(),
    SizedBox(),
    CoffeListing(),
    SizedBox(),
    CoffeListing(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 100.0,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset('assets/images/coffee2.png'),
              ),
            ),
            Positioned(
              top: 0.0,
              right: -180.0,
              child: Image.asset('assets/images/square.png'),
            ),
            Positioned(
              bottom: 0.0,
              left: -80.0,
              child: Image.asset('assets/images/drum.png'),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              FlutterIcons.keyboard_backspace_mco,
                            ),
                          ),
                          Badge(
                            badgeContent: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            position: BadgePosition.bottomStart(
                              bottom: -4.0,
                              start: 4.0,
                            ),
                            child: Image.asset('assets/images/shopping_bag.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Cafés",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: kTextColor1,
                        ),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(60.0),
                        child: buildListView(),
                      ),
                      SizedBox(height: 20.0),
                      Obx(
                        () {
                          return AnimatedSwitcher(
                            duration: Duration(seconds: 1),
                            child: pages[_controller.index.value],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Obx(() {
          return InkWell(
            onTap: () {
              //print("Estoy tocando al ${ListCafes.cafesitos[index].name}");
              _controller.index.value = index;
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: ScreenUtil().setHeight(48.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: _controller.index.value == index
                    ? Colors.brown
                    : Colors.brown.withOpacity(.3),
              ),
              child: Center(
                child: Text(
                  ListCafes.cafesitos[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _controller.index.value == index
                        ? Colors.black
                        : Colors.brown.withOpacity(.6),
                  ),
                ),
              ),
            ),
          );
        });
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 15);
      },
      itemCount: ListCafes.cafesitos.length,
    );
  }
}
