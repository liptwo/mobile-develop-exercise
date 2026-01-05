import 'package:flutter/material.dart';
import '../models/payment_method.dart';

class GooglePayPayment extends PaymentMethod {
  @override
  String get id => 'google';

  @override
  String get name => 'Google Pay';

  @override
  IconData get icon => Icons.g_mobiledata;

  @override
  void pay(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Thanh toán bằng Google Pay')));
  }
}
