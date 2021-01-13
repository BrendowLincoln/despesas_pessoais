import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButtonWidget extends StatelessWidget {
  final String label;
  final Function onPressed;

  const AdaptativeButtonWidget({
    this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            padding: EdgeInsets.symmetric(horizontal: 20),
          )
        : RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: onPressed,
            textColor: Theme.of(context).textTheme.button.color,
            child: Text(label),
          );
  }
}
