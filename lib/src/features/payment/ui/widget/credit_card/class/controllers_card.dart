import 'package:flutter/material.dart';

class ControllersCard {
  late TextEditingController number;
  late TextEditingController expired;
  late TextEditingController cvv;
  late TextEditingController cardHolder;

  ControllersCard() {
    number = TextEditingController();
    expired = TextEditingController();
    cvv = TextEditingController();
    cardHolder = TextEditingController();
  }
}
