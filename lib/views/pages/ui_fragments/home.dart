import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gtr_assignment/common/height_spacer.dart';
import 'package:gtr_assignment/constants/app_constants.dart';
import 'package:gtr_assignment/data/gridView_Provider.dart';
import 'package:gtr_assignment/router/router_manger.dart';
import 'package:gtr_assignment/views/pages/page2.dart';
import 'package:gtr_assignment/views/pages/widgets/headingWidget.dart';
import 'package:gtr_assignment/views/pages/widgets/CategoryItemWidget.dart';
import 'package:gtr_assignment/views/pages/widgets/veticaleTile.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  int mycurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      "assets/images/001-fruits.png",
      "assets/images/006-fish.png",
      "assets/images/003-vegetables.png"
    ];
    return Scaffold(
        //appBar starts here
        appBar: TopBar(),
        //drawer starts
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                ),
                title: const Text('Page 2'),
                onTap: () {
                  context.goNamed(RouteNames.PAGE2);
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => GridViewPage()));
                },
              ),
            ],
          ),
        ),
        //drawer ends
        //appBar ends here
        body: Column(children: [
          //carosel slider start here

          Column(
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 133.h,
                      aspectRatio: 16 / 9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      viewportFraction: 1,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          mycurrentIndex = index;
                        });
                      },
                    ),
                    items: imagePaths.map((imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                      bottom: 30,
                      left: 180,
                      //dot indicator starts

                      child: AnimatedSmoothIndicator(
                        activeIndex: mycurrentIndex,
                        count: imagePaths.length,
                        effect: WormEffect(
                          dotHeight: 8.h,
                          dotWidth: 8.w,
                          spacing: 10,
                          activeDotColor: Colors.white,
                          dotColor: Colors.black,
                        ),
                      ))
                ],
              ),
              //category section starts
              SizedBox(
                height: hieght * 0.14,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  CategoryItemWidget(
                    CategoryItemName: "All",
                    image: 'assets/images/market.png',
                    onTap: () {},
                  ),
                  CategoryItemWidget(
                    CategoryItemName: "Fruits",
                    image: 'assets/images/001-fruits.png',
                    onTap: () {},
                  ),
                  CategoryItemWidget(
                    CategoryItemName: "Vegetables",
                    image: 'assets/images/003-vegetables.png',
                    onTap: () {},
                  ),
                  CategoryItemWidget(
                    CategoryItemName: "Fish",
                    image: 'assets/images/006-fish.png',
                    onTap: () {},
                  ),
                ]),
              ),
              //category section ends
              SizedBox(
                height: 12.h,
              ),

              //listview section
              SizedBox(
                height: hieght * 0.40,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    VerticalTile(
                        image: "assets/images/long1.png",
                        Bigtitle: "Fruits and Vegetables",
                        Smalltitle: """Lorem ipsum diord sit amit,
sjjrk aosjet constectia adiposimg sot"""),
                    Divider(),
                    VerticalTile(
                      image: "assets/images/long2.png",
                      Bigtitle: "Grocery and Staples",
                      Smalltitle: """Lorem ipsum diord sit amit,
sjjrk aosjet constectia adiposimg sot""",
                    ),
                    Divider(),
                    VerticalTile(
                      image: "assets/images/long3.png",
                      Bigtitle: "Mans and Womens Wear",
                      Smalltitle: """Lorem ipsum diord sit amit,
sjjrk aosjet constectia adiposimg sot""",
                    ),
                    Divider(),
                    VerticalTile(
                      image: "assets/images/long4.png",
                      Bigtitle: "Foot ware",
                      Smalltitle: """Lorem ipsum diord sit amit,
sjjrk aosjet constectia adiposimg sot""",
                    ),
                  ],
                ),
              ),
//instead of using listview i tried the following code using api but it always gives the same error Another exception was thrown: RangeError (index): Invalid value: Valid value range is empty:
//0
// the code i have tried here ---SizedBox(
              //height: hieght * 0.30,
              // child: Consumer<GridViewProvider>(
              //        builder: (context, gridviewprovider, _) =>
              //          ListView.builder(
              //                  scrollDirection: Axis.horizontal,
              //                itemCount: 5,
              //                    itemBuilder: (context, index) {

              //                      VerticalTile(
              //                          image: "assets/images/long3.png",
              //                            Bigtitle:"Mans and Womens Wear",
              // gridviewprovider.products[index].id.toString() ,
              //                        Smalltitle: """Lorem ipsum diord sit amit,
//sjjrk aosjet constectia adiposimg sot""",
              //                        );
              //                        }))),
//

//
            ],
          ),
        ]));
  }

  AppBar TopBar() {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: new Image.asset('assets/images/menu.png'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      centerTitle: true,
      title: Image.asset('assets/images/appbarimage.png', fit: BoxFit.cover),
      backgroundColor: Color(appBarColor.value),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            )),
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.shopping_cart),
            )),
      ],
    );
  }
}
