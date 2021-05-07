import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_task/core/models/address_model.dart';
import 'package:test_task/core/utils/constants.dart';

import 'database_service.dart';

@Injectable(as: DatabaseService)
class DatabaseServiceImpl extends DatabaseService {
  final Database _database;

  DatabaseServiceImpl(this._database);

  @override
  Future<int> insertAddress(AddressModel addressModel) async {
    return _database.insert(Constants.addressesTable, addressModel.toMap());
  }

  @override
  Future<List<AddressModel>> queryAddresses() async {
    List<Map<String, Object?>> records =
        await _database.query(Constants.addressesTable);
    List<AddressModel> addresses =
        records.map((e) => AddressModel.fromMap(e)).toList();
    return addresses;
  }
}
