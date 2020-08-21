//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttonList;

  ButtonRow(this.buttonList);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buttonList.fold(<Widget>[], (list, el) {
            list.isEmpty ? list.add(el) : list.addAll([SizedBox(width: 1,), el]);
            return list;
          }),
        ),
    );
  }
}