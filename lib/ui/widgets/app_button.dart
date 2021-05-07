import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/ui/shared/app_colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double height;
  final bool isLoading;

  final double borderRadius;
  final double progressSize;

  const AppButton(
      {Key? key,
      this.onPressed,
      required this.text,
      this.isLoading = false,
      this.height = 50,
      this.borderRadius = 12,
      this.progressSize = 30})
      : super(key: key);

  Widget _buildLoading() {
    return SizedBox(
      height: progressSize,
      width: progressSize,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        key: ValueKey<String>("Loading"),
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text,
      key: ValueKey<String>("Text"),
      maxLines: 1,
      style: TextStyle(
          fontSize: 14,
          height: 1.5,
          color: Colors.white,
          fontWeight: FontWeight.w500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        key: key,
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            backgroundColor: AppColors.mainColor,
            primary: Colors.black.withOpacity(0.3),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        child: Container(
          height: height,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: isLoading ? _buildLoading() : _buildText(),
          ),
        ),
        onPressed: onPressed);
  }
}
