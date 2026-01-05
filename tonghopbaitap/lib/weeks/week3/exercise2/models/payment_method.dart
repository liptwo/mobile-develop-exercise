import 'package:flutter/material.dart';

abstract class PaymentMethod {
  String get id;
  String get name;
  IconData get icon;

  void pay(BuildContext context);
}
