import 'package:flutter/material.dart';
import '../models/payment_method.dart';

class ApplePayPayment extends PaymentMethod {
  @override
  String get id => 'apple';

  @override
  String get name => 'Apple Pay';

  @override
  IconData get icon => Icons.apple;

  @override
  void pay(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Thanh toán bằng Apple Pay')));
  }
}
