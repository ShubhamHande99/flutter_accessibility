import 'package:flutter/material.dart';
import 'package:project/core/utils/responsive_size.dart';

class AppTextStyle {
  static TextStyle? bold30(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 30.sp,
          letterSpacing: 1.5,
        );
  }

  static TextStyle? bold26(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle? bold22(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle? bold15(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
          fontSize: 15.sp,
          letterSpacing: 1.2,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle? semiBold15(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
        );
  }

  static TextStyle? semiBold14(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        );
  }

  static TextStyle? medium16(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        );
  }

  static TextStyle? medium15(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        );
  }


  static TextStyle? headlineMedium(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle? headlineSmall(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(

    );
  }

  static TextStyle? titleLarge(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(

    );
  }

  static TextStyle? titleMedium(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(

    );
  }

  static TextStyle? labelLarge(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle? displaySmall(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall!.copyWith(

    );
  }

  static TextStyle? bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(

    );
  }
}
