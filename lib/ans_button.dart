import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  final void Function() onTap;
  var text;
  AnsButton({super.key, required this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding:const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        onPressed: onTap,
        child: Text(text , textAlign: TextAlign.center,));
  }
}
