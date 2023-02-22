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

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final bool disabled;
  final String text;

  const PrimaryButton({
    required this.onPressed,
    this.disabled = false,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: ElevatedButton(
        child: Ink(
          child: Container(
            constraints: BoxConstraints(),
            alignment: Alignment.center,
            child: Text(text,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.button),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                disabled ? AppColors.gray : AppColors.primaryLight,
                disabled ? AppColors.gray : AppColors.primaryDark,
              ],
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: disabled ? null : onPressed as void Function()?,
      ),
    );
  }
}
