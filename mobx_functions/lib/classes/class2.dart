// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Function callback;

  const ActionButton({
    Key? key,
    required this.title,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        callback(title);
      },
      child: Icon(Icons.add),
    );
  }
}
