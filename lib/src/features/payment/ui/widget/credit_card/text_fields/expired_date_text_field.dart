import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ExpiredDateTextField extends StatelessWidget {
  final TextEditingController controller;

  final int _lengthText = 5;

  const ExpiredDateTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        validator: (val) =>
            val!.length != _lengthText ? 'Incomplete card number' : null,
        controller: controller,
        decoration: const InputDecoration(
          labelText: 'Expired Date',
          hintText: 'XX/XX',
          counterText: '',
          border: OutlineInputBorder(),
        ),
        maxLength: _lengthText, //4 digit + "/"
        keyboardType: TextInputType.phone,
        inputFormatters: [
          MaskTextInputFormatter(
            mask: '##/##',
            filter: {"#": RegExp('[0-9]')},
            type: MaskAutoCompletionType.lazy,
          )
        ],
      ),
    );
  }
}
