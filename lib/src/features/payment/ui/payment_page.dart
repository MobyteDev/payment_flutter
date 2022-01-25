import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/card_holder_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/cvv_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/expired_date_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/number_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/pay_button.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/credit_card.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //const CreditButton(),
            const NumberTextField(),
            const ExpiredDateTextField(),
            const CvvTextField(),
            const CardHolderTextField(),
            
            PayButton(
              title: 'Credit card',
              icon: const Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
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
