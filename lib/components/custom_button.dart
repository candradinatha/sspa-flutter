import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final GestureTapCallback onPressed;

  CustomButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: ElevatedButton(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 14.0),
            ),
          ),
        )
    );
  }
}
