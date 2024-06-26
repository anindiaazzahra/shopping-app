import 'package:hive/hive.dart';

part 'favorite.g.dart';

@HiveType(typeId: 1)
class Favorite extends HiveObject {
  @HiveField(0)
  String? id;

  @HiveField(1)
  String email;

  @HiveField(2)
  List<FavoriteProduct> products;

  Favorite({
    required this.email,
    required this.products,
  });
}

@HiveType(typeId: 2)
class FavoriteProduct extends HiveObject {
  @HiveField(0)
  int productId;

  @HiveField(1)
  String name;

  @HiveField(2)
  String brandName;

  @HiveField(3)
  String imageUrl;

  @HiveField(4)
  String priceCurrency;

  @HiveField(5)
  double priceValue;

  @HiveField(6)
  String productUrl;

  FavoriteProduct({
    required this.productId,
    required this.name,
    required this.brandName,
    required this.imageUrl,
    required this.priceCurrency,
    required this.priceValue,
    required this.productUrl,
  });
}
