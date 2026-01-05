import 'package:flutter/material.dart';
import '../models/payment_method.dart';

class PaypalPayment extends PaymentMethod {
  @override
  String get id => 'paypal';

  @override
  String get name => 'PayPal';

  @override
  IconData get icon => Icons.account_balance_wallet;

  @override
  void pay(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Thanh toán bằng PayPal')));
  }
}
