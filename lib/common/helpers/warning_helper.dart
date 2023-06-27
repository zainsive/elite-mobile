import 'package:elite_commerce/custom/color.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:flutter/material.dart';

class WarningHelper {
  kSnackBar({
    required String msg,
    required BuildContext ctx,
    Color? color,
  }) {
    final mySnackBar = SnackBar(
      content: Text(
        msg,
        textAlign: TextAlign.center,
        style: kWhiteStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: color ?? Colors.red,
    );

    ScaffoldMessenger.of(ctx).clearSnackBars();
    ScaffoldMessenger.of(ctx).showSnackBar(mySnackBar);
  }

  kLoadingDialog({required BuildContext ctx}) {
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(
            color: kMainColor,
          ),
        );
      },
    );
  }
}
