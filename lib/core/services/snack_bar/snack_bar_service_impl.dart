import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'snack_bar_service.dart';

@LazySingleton(as: SnackBarService)
class SnackBarServiceImpl extends SnackBarService {
  @override
  void showSnackBar(String message) {
    GetBar(
      message: message,
      duration: Duration(seconds: 4, milliseconds: 500),
      margin: EdgeInsets.all(20),
      snackStyle: SnackStyle.FLOATING,
      animationDuration: Duration(milliseconds: 500),
      borderRadius: 12,
    )..show();
  }
}
