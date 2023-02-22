import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';


class RazorPayPayment {
  verify(
      {required String? orderId,
      required String? paymentId,
      required String? signature}) {
    print("Verify calling");
    Fluttertoast.showToast(msg: "Success");
  }

  errorVerify({
    required int? code,
    required String? message,
    required Map<dynamic, dynamic>? error,
  }) {
    print("Failure calling");
    Fluttertoast.showToast(msg: "failed");
  }

  externalWallet({
    required String? walletName,
  }) {
    Fluttertoast.showToast(msg: "External Wallet");
  }

  void openCheckout({
    required String key,
    required int amount,
    required String name,
    required String description,
    required int contact,
    required String email,
    required Razorpay razorpay,
  }) {
    print("Opening calling");
    var options = {
      'key': key,
      'amount': amount,
      'name': name,
      'description': description,
      'prefill': {'contact': contact, 'email': email}
    };
    try {
      razorpay.open(options);
    } catch (e) {
      debugPrint("$e");
    }
  }
}
