import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final IconData iconData;

  PrimaryButton({
    @required this.onPress,
    @required this.text,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      child: MaterialButton(
        height: 50,
        minWidth: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.lightBlue,
        disabledColor: Colors.black12,
        onPressed: onPress,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              if (iconData != null)
                Icon(
                  iconData,
                  color: Colors.white,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
