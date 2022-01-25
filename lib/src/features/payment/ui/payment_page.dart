import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_template/src/features/payment/ui/widget/pay_button.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CreditButton.get(),

            PayButton(
              title: "Credit card",
              icon: const Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),

            PayButton(
              title: "Google Pay",
              icon: const Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),

            PayButton(
              title: "Apple Pay",
              icon: const Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
