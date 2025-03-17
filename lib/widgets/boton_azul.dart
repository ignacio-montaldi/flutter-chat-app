import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const BotonAzul({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
