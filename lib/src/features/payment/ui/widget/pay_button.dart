import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PayButton extends StatelessWidget {
  final String title;
  final Icon icon;

  final VoidCallback onPressed;

  const PayButton({
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        child: Row(
          children: [
            Text(title),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: icon,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey[100]),
          foregroundColor: MaterialStateProperty.all(Colors.blueAccent[700]),
        ),
      ),
      margin: const EdgeInsets.only(left: 40, right: 40),
    );
  }
}
