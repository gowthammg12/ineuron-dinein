import 'package:flutter/material.dart';

class AppStyles {
  static const InputBorder enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
      width: 1.5,
    ),
    borderRadius: BorderRadius.all(Radius.circular(16)),
  );

  static const InputBorder border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.all(Radius.circular(16)),
  );
}
