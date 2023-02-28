import 'package:flutter/material.dart';
import 'package:razorpay_plugin/razorpay_plugin.dart';
import 'dart:developer';

class RazorpayGateway extends StatefulWidget {
  const RazorpayGateway({key});

  @override
  State<RazorpayGateway> createState() => _RazorpayGatewayState();
}

class _RazorpayGatewayState extends State<RazorpayGateway> {
  final MyRazorpayPlugin _razor = MyRazorpayPlugin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plugin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  log("pressed ");
                  _razor.openCheckout(
                    keyId: 'rzp_test_nFn5ZyHDYjt6tA',
                    amount: 1000,
                    name: "Arbaan",
                    description: "Fine T-Shirt",
                    contact: 123456778,
                    email: 'test@gmail.com',
                  );
                },
                child: const Text("RazorPay"))
          ],
        ),
      ),
    );
  }
}
