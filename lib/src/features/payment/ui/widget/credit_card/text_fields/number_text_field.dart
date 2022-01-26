import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NumberTextField extends StatelessWidget {
  final TextEditingController controller;

  final int _lengthText = 19;

  const NumberTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        validator: (val) =>
            val!.length != _lengthText ? 'Incomplete card number' : null,
        controller: controller,
        maxLength: _lengthText, //16 digit + 3 space
        obscureText: false,

        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          labelText: 'Number',
          hintText: 'XXXX XXXX XXXX XXXX',
          counterText: '',
          border: OutlineInputBorder(),
        ),

        inputFormatters: [
          MaskTextInputFormatter(
            mask: '#### #### #### ####',
            filter: {"#": RegExp('[0-9]')},
            type: MaskAutoCompletionType.lazy,
          )
        ],
      ),
    );
  }
}
