import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:upi_india/upi_india.dart';

class Upipayment extends StatefulWidget {
  final String receiverUpiId;
  final String receiverName;
  final String transactionRefId;
  final String transactionNote;
  final double amount;

  const Upipayment({
    super.key,
    required this.receiverUpiId,
    required this.receiverName,
    required this.transactionRefId,
    required this.transactionNote,
    required this.amount,
  });

  @override
  // ignore: library_private_types_in_public_api
  _UpipaymentState createState() => _UpipaymentState();
}

class _UpipaymentState extends State<Upipayment> {
  Future<UpiResponse>? transaction;
  final UpiIndia _upiIndia = UpiIndia();
  List<UpiApp>? apps;

  TextStyle header = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  TextStyle value = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  @override
  void initState() {
    _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
      setState(() {
        apps = value;
      });
    }).catchError((e) {
      apps = [];
    });
    super.initState();
  }

  Future<UpiResponse> initiateTransaction({
    required UpiApp app,
    required String receiverUpiId,
    required String receiverName,
    required String transactionRefId,
    required String transactionNote,
    required double amount,
  }) async {
    return _upiIndia.startTransaction(
      app: app,
      receiverUpiId: receiverUpiId,
      receiverName: receiverName,
      transactionRefId: transactionRefId,
      transactionNote: transactionNote,
      amount: amount,
    );
  }

  Widget displayUpiApps() {
    if (apps == null) {
      return const Center(child: CircularProgressIndicator());
    } else if (apps!.isEmpty) {
      return Center(
        child: Text(
          "No apps found to handle transaction.",
          style: header,
        ),
      );
    } else {
      return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Wrap(
            children: apps!.map<Widget>((UpiApp app) {
              return GestureDetector(
                onTap: () {
                  transaction = initiateTransaction(
                    app: app,
                    amount: widget.amount,
                    receiverName: widget.receiverName,
                    receiverUpiId: widget.receiverUpiId,
                    transactionNote: widget.transactionNote,
                    transactionRefId: widget.transactionRefId,
                  );
                  log("$initiateTransaction");
                  setState(() {});
                },
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.memory(
                        app.icon,
                        height: 60,
                        width: 60,
                      ),
                      Text(app.name),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UPI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: displayUpiApps(),
          ),
        ],
      ),
    );
  }
}
