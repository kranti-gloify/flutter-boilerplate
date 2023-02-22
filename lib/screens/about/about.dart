import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/payments/razorpay_payment/razorpay_payment.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final RazorPayPayment _razor = RazorPayPayment();
  final _razorpay = Razorpay();

  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    _razor.verify(
        orderId: response.orderId,
        paymentId: response.paymentId,
        signature: response.signature);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("error");
    _razor.errorVerify(
        code: response.code, message: response.message, error: response.error);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    _razor.externalWallet(walletName: response.walletName);
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("This app was developed by Gloify"),
          ),
          ElevatedButton(
              onPressed: () {
                  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
                  analytics.logEvent(name: "button",parameters: {'home_button':'clicked'});
                _razor.openCheckout(
                    amount: 1000,
                    contact: 123456789,
                    description: "Pants",
                    email: 'test@example.com',
                    key: "rzp_test_nFn5ZyHDYjt6tA",
                    name: "Arbaan-Gloify",
                    razorpay: _razorpay);
              },
              child: Text("RazorPay"))
        ],
      ),
    );
  }
}
