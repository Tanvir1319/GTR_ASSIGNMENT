class ProductModel {
  int? id;
  String? type;
  String? parentCode;
  String? name;
  String? code;
  int? price;
  int? costPrice;
  String? unitName;
  String? categoryName;
  String? brandName;
  String? modelName;
  String? variantName;
  String? sizeName;
  String? colorName;
  int? oldPrice;
  String? imagePath;
  String? productBarcode;
  String? description;
  List<ProductModel>? childList; // Use ProductModel instead of Null
  List<ProductModel>? batchSerial; // Use ProductModel instead of Null
  List<ProductModel>? warehouseList; // Use ProductModel instead of Null
  int? currentStock;
  String? createDate;
  String? updateDate;

  ProductModel({
    this.id,
    this.type,
    this.parentCode,
    this.name,
    this.code,
    this.price,
    this.costPrice,
    this.unitName,
    this.categoryName,
    this.brandName,
    this.modelName,
    this.variantName,
    this.sizeName,
    this.colorName,
    this.oldPrice,
    this.imagePath,
    this.productBarcode,
    this.description,
    this.childList,
    this.batchSerial,
    this.warehouseList,
    this.currentStock,
    this.createDate,
    this.updateDate,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    // Deserialize JSON data here
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      'Id': id,
      'Type': type,
      'ParentCode': parentCode,
      'Name': name,
      'Code': code,
      'Price': price,
      'CostPrice': costPrice,
      'UnitName': unitName,
      'CategoryName': categoryName,
      'BrandName': brandName,
      'ModelName': modelName,
      'VariantName': variantName,
      'SizeName': sizeName,
      'ColorName': colorName,
      'OldPrice': oldPrice,
      'ImagePath': imagePath,
      'ProductBarcode': productBarcode,
      'Description': description,
      'CurrentStock': currentStock,
      'CreateDate': createDate,
      'UpdateDate': updateDate,
    };

    if (childList != null) {
      data['ChildList'] = childList!.map((product) => product.toJson()).toList();
    }

    if (batchSerial != null) {
      data['BatchSerial'] = batchSerial!.map((product) => product.toJson()).toList();
    }

    if (warehouseList != null) {
      data['WarehouseList'] = warehouseList!.map((product) => product.toJson()).toList();
    }

    return data;
  }
}
