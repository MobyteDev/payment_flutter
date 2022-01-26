import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCard3dModel extends StatelessWidget {
  const CreditCard3dModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
      cardNumber: '4242 4232 4222 4212',
      expiryDate: '12/21',
      cardHolderName: 'cardHolderName',
      cvvCode: '014',
      showBackView: false,
      // ignore: non_constant_identifier_names
      onCreditCardWidgetChange: (CreditCardBrand) {},
    );
  }
}
