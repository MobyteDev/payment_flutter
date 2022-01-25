import 'package:flutter/material.dart';
import 'package:payment_template/src/features/payment/ui/payment_page.dart';

void main() => runApp(
      const App(),
    );

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "App",
      home: PaymentPage(),
    );
  }
}
