import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardHolderTextField extends StatelessWidget {
  final TextEditingController controller;

  const CardHolderTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        validator: (val) =>
            val!.isEmpty ? 'Fill in the field' : null,
        controller: controller,
        decoration: const InputDecoration(
          labelText: 'Card Holder',
          hintText: 'Name Surname',
          border: OutlineInputBorder(),
        ),
        obscureText: false,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[a-zA-Z. ]')),
        ],
      ),
    );
  }
}
