import 'package:flutter/material.dart';
import 'package:payment_template/src/features/payment/ui/widget/pay_button.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Способ оплаты')),
      body: Center(
        child: Column(
          children: [
            PayButton(
              title: 'Credit card',
              icon: const Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/paymentCreditCard');
              },
            ),
            PayButton(
              title: 'Google Pay',
              icon: const Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),
            PayButton(
              title: 'Apple Pay',
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
