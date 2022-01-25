import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditButton {
  static Widget get() {
    return CreditCardWidget(
      cardNumber: "4242 4232 4222 4212",
      expiryDate: "12/21",
      cardHolderName: "cardHolderName",
      cvvCode: "014",
      showBackView: false,
      onCreditCardWidgetChange: (CreditCardBrand) {},
    );
  }
}
