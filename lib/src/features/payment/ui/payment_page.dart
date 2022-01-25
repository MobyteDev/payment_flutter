import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Google Pay"),
              ),
            ),
            Container(
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Another Pay"),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
