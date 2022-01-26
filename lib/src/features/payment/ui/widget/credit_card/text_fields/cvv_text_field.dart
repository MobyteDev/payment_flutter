import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CvvTextField extends StatelessWidget {
  final TextEditingController controller;

  final int _lengthText = 3;

  const CvvTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        validator: (val) =>
            val!.length != _lengthText ? 'Incomplete card number' : null,
        controller: controller,
        decoration: const InputDecoration(
          labelText: 'CVV',
          hintText: 'XXX',
          counterText: '',
          border: OutlineInputBorder(),
        ),
        maxLength: _lengthText,
        obscureText: true,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
