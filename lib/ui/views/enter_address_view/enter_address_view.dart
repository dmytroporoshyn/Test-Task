import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test_task/app/locator.dart';
import 'package:test_task/ui/shared/app_colors.dart';
import 'package:test_task/ui/views/enter_address_view/enter_address_view_model.dart';
import 'package:test_task/ui/widgets/app_button.dart';
import 'package:test_task/ui/widgets/app_text_field.dart';

class EnterAddressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EnterAddressViewModel>.reactive(
        viewModelBuilder: () => locator<EnterAddressViewModel>(),
        onModelReady: (model) => model.init(),
        builder: (context, model, widget) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                tr("enter_address"),
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Column(
              children: [
                Container(
                  height: 1,
                  color: AppColors.grey_dark,
                ),
                Flexible(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(24),
                    children: [
                      AppTextField(
                        labelText: tr("name"),
                        errorText: tr("name_error"),
                        controller: model.nameController,
                        enabled: !model.isBusy,
                        showError: model.nameError,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        labelText: tr("address"),
                        errorText: tr("address_error"),
                        controller: model.addressController,
                        enabled: !model.isBusy,
                        showError: model.addressError,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        labelText: tr("zipcode"),
                        errorText: tr("zipcode_error"),
                        controller: model.zipcodeController,
                        enabled: !model.isBusy,
                        showError: model.zipcodeError,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      AppTextField(
                        labelText: tr("city"),
                        errorText: tr("city_error"),
                        controller: model.cityController,
                        enabled: !model.isBusy,
                        showError: model.cityError,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  child: AppButton(
                    text: tr("preview_order"),
                    onPressed: model.onPreviewOrder,
                    isLoading: model.isBusy,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
