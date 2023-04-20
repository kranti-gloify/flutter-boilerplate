import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/colors.dart';

/// Use [PrimaryButton] where in the places of common Raised Button.
/// Needs text, onPressed Function, disabled flag.
/// Have Solid background with white or other color as text color.
/// Use [PrimaryButton] like this:
/// For child <Widget>
///
///  PrimaryButton({
///    text: 'login',
///    onPressed: () => login(),
///    disabled: false,
///  });
///  ```

class OutlineButton extends StatelessWidget {
  final Function onPressed;
  final bool disabled;
  final String text;
  final double heigth;
  final double widt;
  final double fntSize;
  final Color textColor;
  final Color bgColor;
  final Color borderColor;
  final bool iconEnable;
  final String iconImage;
  final bool strikethroughText, isLoading;

  const OutlineButton(
      {required this.onPressed,
      this.disabled = false,
      this.text = '',
      this.heigth = 42,
      this.widt = 100,
      this.fntSize = 13,
      this.iconEnable = false,
      this.iconImage = "",
      required this.textColor,
      required this.bgColor,
      this.borderColor = AppColors.TRANSPARENT,
      this.isLoading = false,
      this.strikethroughText = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: heigth,
        width: widt,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: bgColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            side: BorderSide(color: borderColor, width: 2),
          ),
          onPressed: disabled ? () {} : () => onPressed(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconEnable)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image(
                    image: AssetImage(iconImage),
                  ),
                ),
              Text(
                text,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: fntSize,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                    decoration:
                        strikethroughText ? TextDecoration.lineThrough : null,
                    letterSpacing: 0.5),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
