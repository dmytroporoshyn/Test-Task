import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String? errorText;
  final bool showError;
  final bool enabled;
  final TextEditingController? controller;

  const AppTextField({
    Key? key,
    required this.labelText,
    this.errorText,
    this.showError = false,
    this.controller,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: enabled,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          labelText: labelText,
          errorText: showError ? errorText : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
    );
  }
}
