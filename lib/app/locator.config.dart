// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i3;

import '../core/services/database/database_service.dart' as _i4;
import '../core/services/database/database_service_impl.dart' as _i5;
import '../core/services/database_modul.dart' as _i9;
import '../core/services/snack_bar/snack_bar_service.dart' as _i6;
import '../core/services/snack_bar/snack_bar_service_impl.dart' as _i7;
import '../ui/views/enter_address_view/enter_address_view_model.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final databaseModule = _$DatabaseModule();
  await gh.factoryAsync<_i3.Database>(() => databaseModule.initDB(),
      preResolve: true);
  gh.factory<_i4.DatabaseService>(
      () => _i5.DatabaseServiceImpl(get<_i3.Database>()));
  gh.lazySingleton<_i6.SnackBarService>(() => _i7.SnackBarServiceImpl());
  gh.factory<_i8.EnterAddressViewModel>(() => _i8.EnterAddressViewModel(
      get<_i4.DatabaseService>(), get<_i6.SnackBarService>()));
  return get;
}

class _$DatabaseModule extends _i9.DatabaseModule {}
