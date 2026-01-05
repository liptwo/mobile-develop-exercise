import 'package:flutter/material.dart';

import 'models/payment_method.dart';
import 'implementations/paypal_payment.dart';
import 'implementations/applePay_payment.dart';
import 'implementations/googlePay_payment.dart';
import 'widgets/payment_item.dart';

class Week3Exercise2 extends StatefulWidget {
  const Week3Exercise2({super.key});

  @override
  State<Week3Exercise2> createState() => _Week3Exercise2State();
}

class _Week3Exercise2State extends State<Week3Exercise2> {
  PaymentMethod? selectedMethod;

  final List<PaymentMethod> methods = [
    PaypalPayment(),
    ApplePayPayment(),
    GooglePayPayment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài 2')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade50,
              ),
              child: Icon(
                selectedMethod?.icon ?? Icons.payment,
                size: 60,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 24),

            ...methods.map(
              (method) => PaymentItem(
                method: method,
                isSelected: selectedMethod?.id == method.id,
                onTap: () {
                  setState(() {
                    selectedMethod = method;
                  });
                },
              ),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: selectedMethod == null
                  ? null
                  : () {
                      selectedMethod!.pay(context);
                    },
              child: const Text('Xác nhận'),
            ),
          ],
        ),
      ),
    );
  }
}
