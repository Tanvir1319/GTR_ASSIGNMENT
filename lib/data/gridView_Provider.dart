import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gtr_assignment/model/product_model.dart';
import 'package:http/http.dart ' as http;
import 'package:provider/provider.dart';

class GridViewProvider with ChangeNotifier {
  //given api url
  final given_url =
      "https://www.pqstec.com/InvoiceApps/Values/GetProductList?pageNo=1&pageSize=100&searchquery=boys&token=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI0MTMiLCJDdXJyZW50Q29tSWQiOiIxIiwibmJmIjoxNjkzMzA3MTUyLCJleHAiOjE2OTM5MTE5NTIsImlhdCI6MTY5MzMwNzE1Mn0.BQnXJn7L4e9TcTQ72UUXmLf7KTfpewT_d3uKN45iI-w";

  List<ProductModel> products = [];
  bool isProductLoading = true;

//API Calling function
  Future<void> loadAllProducts() async {
    http.Response res = await http.get(Uri.parse(given_url));
    if (res.statusCode == 200) {
      List allProducts = jsonDecode(res.body);
      allProducts.forEach((productMap) {
        products.add(ProductModel.fromJson(productMap));
      });
    } else {
      print("Error");
    }
    print(products);
    isProductLoading = false;
    notifyListeners();
    print(products);
  }
}
