import 'package:flutter/material.dart';
import 'payment_method_tile.dart';
import 'payment_method.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? selectedPaymentId;

  final List<PaymentMethod> methods = [
    PaymentMethod(id: 'paypal', name: 'PayPal'),
    PaymentMethod(id: 'google', name: 'Google Pay'),
    PaymentMethod(id: 'apple', name: 'Apple Pay'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Chọn hình thức thanh toán'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),

            /// Danh sách phương thức
            ...methods.map((method) {
              return PaymentMethodTile(
                title: method.name,
                isSelected: selectedPaymentId == method.id,
                onTap: () {
                  setState(() {
                    selectedPaymentId = method.id;
                  });
                },
              );
            }).toList(),

            const Spacer(),

            /// Button Continue
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: selectedPaymentId == null ? null : () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Continue', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
