import 'package:json_annotation/json_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  @JsonKey(disallowNullValue: true)
  final int? id;
  final String name;
  final String address;
  final String zipcode;
  final String city;

  AddressModel(
      {required this.name,
      required this.address,
      required this.zipcode,
      required this.city,
      this.id});

  factory AddressModel.fromMap(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toMap() => _$AddressModelToJson(this);
}
