import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gtr_assignment/constants/app_constants.dart';
import 'package:gtr_assignment/data/gridView_Provider.dart';
import 'package:gtr_assignment/router/router_manger.dart';
import 'package:provider/provider.dart';

import '../../model/product_model.dart';

class GridViewPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => context.goNamed(RouteNames.HOME),
        ),
        centerTitle: true,
        title: Text('Fruits And Vegetables',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Badge(label: Text('4'), child: Icon(Icons.shopping_cart)),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "25 Products Founds",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/filter.png'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Consumer<GridViewProvider>(
              builder: (context, gridviewprovider, child) => 
             ViewSideBySide()
             
             ),
          ),
        ],
      ),
    );
  }

  GridView ViewSideBySide() {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      children: [
        ProductCard(),
        ProductCard2(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
      ],
    );
  }

  Card ProductCard() {
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.greenAccent,
          ),
        ),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined)),
                  ],
                ),
                Expanded(
                  flex: 13,
                  child: Image.asset('assets/images/g1.png'),
                ),
                Column(
                  children: [
                    Text(
                      "Broccoli flower",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("৳60",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                decorationColor: Colors.red,
                                decoration: TextDecoration.lineThrough)),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "৳60",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.green,
                ),
                Expanded(
                    flex: 5,
                    child: Text('Add to cart',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))),
              ]),
        ));
  }

  Card ProductCard2() {
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.greenAccent,
          ),
        ),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                  ],
                ),
                Expanded(
                  child: Image.asset('assets/images/g22.png'),
                ),
                Column(
                  children: [
                    Text(
                      "Pomegranate",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("৳300",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                decorationColor: Colors.red,
                                decoration: TextDecoration.lineThrough)),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "৳250",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.green,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 35.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: Colors.green,
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.green,
                            thickness: 2,
                          ),
                          Container(
                            child: Text(
                              "14",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.green,
                            thickness: 2,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
