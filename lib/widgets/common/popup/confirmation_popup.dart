import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/colors.dart';
import 'package:flutter_boilerplate/widgets/common/buttons/outline_button.dart';

void confirmPopup({
  context,
  conformationText,
  acceptText = "Yes",
  acceptAction,
  rejectText = "No",
  rejectAction,
}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: Dialog(
              insetPadding: EdgeInsets.all(22),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(conformationText,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlineButton(
                            text: acceptText,
                            textColor: AppColors.white,
                            bgColor: AppColors.primary,
                            widt: MediaQuery.of(context).size.width,
                            onPressed: () => acceptAction(),
                            fntSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Expanded(
                          child: OutlineButton(
                            text: rejectText,
                            textColor: AppColors.white,
                            bgColor: AppColors.primary,
                            widt: MediaQuery.of(context).size.width,
                            onPressed: () => rejectAction(),
                            fntSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
      });
}
