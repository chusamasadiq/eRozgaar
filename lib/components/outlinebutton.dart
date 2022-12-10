import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  OutlineButton({required this.title, on, required this.onClick});

  String title;
  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
      ),
      onPressed: onClick,
      child: Row(
        children: [
          Icon(Icons.upload_rounded),
          SizedBox(width: 5),
          Text(title)
        ],
      ),
    );
  }
}
