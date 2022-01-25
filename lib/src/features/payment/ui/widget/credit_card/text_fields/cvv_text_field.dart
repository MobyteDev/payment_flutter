import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CvvTextField extends StatelessWidget {
  const CvvTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'CVV',
          hintText: 'XXX',
          border: OutlineInputBorder(),
        ),
        maxLength: 3,
        obscureText: true,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
