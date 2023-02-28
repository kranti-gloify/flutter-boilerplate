import 'package:flutter/widgets.dart';
import 'package:my_upi_india_plugin/new_upi.dart';

class UpiPaymentGateway extends StatefulWidget {
  const UpiPaymentGateway({key});

  @override
  State<UpiPaymentGateway> createState() => _UpiPaymentGatewayState();
}

class _UpiPaymentGatewayState extends State<UpiPaymentGateway> {
  @override
  Widget build(BuildContext context) {
    return const Upipayment(
      amount: 100000,
      receiverName: "Arbaan Qureshi S",
      receiverUpiId: "9164444469@paytm",
      transactionRefId: 'TestingUpiIndiaPlugin',
      transactionNote: 'Example Note.',
    );
  }
}
