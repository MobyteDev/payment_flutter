import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpiredDateTextField extends StatelessWidget {
  const ExpiredDateTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Expired Date',
          hintText: 'XX/XX',
          helperText: 'MONTH/YEAR',
          border: OutlineInputBorder(),
        ),
        maxLength: 4,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
