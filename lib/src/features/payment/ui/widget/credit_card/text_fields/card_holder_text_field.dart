import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardHolderTextField extends StatelessWidget {
  const CardHolderTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Card Holder',
          hintText: 'Name Surname',
          border: OutlineInputBorder(),
        ),
        obscureText: false,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[a-zA-Z\.\ ]')),
        ],
      ),
    );
  }
}
