// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteAdapter extends TypeAdapter<Favorite> {
  @override
  final int typeId = 1;

  @override
  Favorite read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Favorite(
      email: fields[1] as String,
      products: (fields[2] as List).cast<FavoriteProduct>(),
    )..id = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, Favorite obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.products);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FavoriteProductAdapter extends TypeAdapter<FavoriteProduct> {
  @override
  final int typeId = 2;

  @override
  FavoriteProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteProduct(
      productId: fields[0] as int,
      name: fields[1] as String,
      brandName: fields[2] as String,
      imageUrl: fields[3] as String,
      priceCurrency: fields[4] as String,
      priceValue: fields[5] as double,
      productUrl: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteProduct obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.brandName)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.priceCurrency)
      ..writeByte(5)
      ..write(obj.priceValue)
      ..writeByte(6)
      ..write(obj.productUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
