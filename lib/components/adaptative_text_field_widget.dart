import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextFieldWidget extends StatelessWidget {

  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onSubmitted;

  AdaptativeTextFieldWidget({
    this.label,
    this.controller,
    this.keyboardType= TextInputType.text,
    this.onSubmitted
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ?
    CupertinoTextField(
      controller: controller,
      keyboardType: keyboardType,
      onSubmitted: onSubmitted,
      placeholder: label,
    ) :
    TextField(
      controller: controller,
      keyboardType: keyboardType,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
