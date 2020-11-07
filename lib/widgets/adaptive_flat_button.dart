import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: handler,
                child: Text('Choose Date'),
                textColor: Theme.of(context).primaryColor,
              ),
            ),
          )
        : FlatButton(
            child: Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: handler,
                child: Text('Choose Date'),
                textColor: Theme.of(context).primaryColor,
              ),
            ),
          );
  }
}
