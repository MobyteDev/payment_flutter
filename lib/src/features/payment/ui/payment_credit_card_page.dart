import 'package:flutter/material.dart';
import 'package:payment_template/src/features/payment/ui/class/Controllers_card.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/card_holder_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/cvv_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/expired_date_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/text_fields/number_text_field.dart';
import 'package:payment_template/src/features/payment/ui/widget/credit_card/credit_card.dart';

import 'widget/pay_button.dart';

class PaymentCreditCardPage extends StatelessWidget {
  PaymentCreditCardPage({Key? key}) : super(key: key);

  final _Controllers = ControllersCard();
  final _FormKeyValid = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Оплата картой')),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _FormKeyValid,
            child: Column(
              children: [
                const CreditCard3dModel(),
                NumberTextField(controller: _Controllers.number),
                Row(
                  children: [
                    Expanded(
                        child: ExpiredDateTextField(
                            controller: _Controllers.expired)),
                    Expanded(child: CvvTextField(controller: _Controllers.cvv)),
                  ],
                ),
                CardHolderTextField(controller: _Controllers.cardHolder),
                PayButton(
                  title: 'Check data',
                  onPressed: () {
                    if (_FormKeyValid.currentState!.validate()) {
                      // ignore: avoid_print
                      print(
                          'Fields:\n${_Controllers.number.text}\n${_Controllers.expired.text}\n'
                          '${_Controllers.cvv.text}\n${_Controllers.cardHolder.text}\n');
                    }
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          margin: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
