import 'package:test_task/core/models/address_model.dart';

abstract class DatabaseService {
  Future<int> insertAddress(AddressModel addressModel);
  Future<List<AddressModel>> queryAddresses();
}
