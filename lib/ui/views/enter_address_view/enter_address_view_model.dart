import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:test_task/core/models/address_model.dart';
import 'package:test_task/core/services/database/database_service.dart';
import 'package:test_task/core/services/snack_bar/snack_bar_service.dart';

@injectable
class EnterAddressViewModel extends BaseViewModel {
  final DatabaseService _databaseService;
  final SnackBarService _snackBarService;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController zipcodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  bool nameError = false;
  bool addressError = false;
  bool zipcodeError = false;
  bool cityError = false;

  EnterAddressViewModel(this._databaseService, this._snackBarService);

  void init() {
    nameController.addListener(() {
      if (nameController.text.isNotEmpty) {
        nameError = false;
        notifyListeners();
      }
    });
    addressController.addListener(() {
      if (addressController.text.isNotEmpty) {
        addressError = false;
        notifyListeners();
      }
    });
    zipcodeController.addListener(() {
      if (zipcodeController.text.isNotEmpty) {
        zipcodeError = false;
        notifyListeners();
      }
    });
    cityController.addListener(() {
      if (cityController.text.isNotEmpty) {
        cityError = false;
        notifyListeners();
      }
    });
  }

  void onPreviewOrder() {
    if (_checkFields()) {
      _insertAddress();
    } else {
      notifyListeners();
    }
  }

  Future<void> _insertAddress() async {
    setBusy(true);
    try {
      await _databaseService.insertAddress(_buildAddress());
      _clearTextFields();
      _snackBarService.showSnackBar(tr("address_added_successfully"));
    } catch (e, stacktrace) {
      print(e);
      print(stacktrace);
      _snackBarService.showSnackBar(tr("error_adding_address"));
    }
    setBusy(false);
  }

  void _clearTextFields() {
    nameController.clear();
    addressController.clear();
    zipcodeController.clear();
    cityController.clear();
  }

  AddressModel _buildAddress() {
    return AddressModel(
        city: cityController.text,
        zipcode: zipcodeController.text,
        address: addressController.text,
        name: nameController.text);
  }

  bool _checkFields() {
    bool valid = true;
    if (nameController.text.isEmpty) {
      valid = false;
      nameError = true;
    }
    if (addressController.text.isEmpty) {
      valid = false;
      addressError = true;
    }
    if (zipcodeController.text.isEmpty) {
      valid = false;
      zipcodeError = true;
    }
    if (cityController.text.isEmpty) {
      valid = false;
      cityError = true;
    }
    return valid;
  }

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    zipcodeController.dispose();
    cityController.dispose();
    super.dispose();
  }
}
