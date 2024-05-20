import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on int {
  Widget height() {
    return SizedBox(height: this.toDouble().w);
  }

  Widget width() {
    return SizedBox(width: this.toDouble().h);
  }
}
