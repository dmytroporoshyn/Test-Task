// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['id']);
  return AddressModel(
    name: json['name'] as String,
    address: json['address'] as String,
    zipcode: json['zipcode'] as String,
    city: json['city'] as String,
    id: json['id'] as int?,
  );
}

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['address'] = instance.address;
  val['zipcode'] = instance.zipcode;
  val['city'] = instance.city;
  return val;
}
