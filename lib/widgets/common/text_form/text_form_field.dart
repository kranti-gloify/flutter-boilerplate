import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/themes/colors.dart';

class TxtFormField extends StatelessWidget {
  final Function onChanged;
  final Function? onSubmitted;
  final TextEditingController textController;
  final IconData? preIcon;
  final String hint;
  final double heigth;
  final List<TextInputFormatter> textFormatter;
  final TextInputType keyBordType;
  final String? Function(String?)? validator;
  final String? errorText;
  final FocusNode? focusNode;
  final bool autoFocus, isObsecure, isEnabled;
  final bool isBorder;

  const TxtFormField({
    required this.onChanged,
    required this.textController,
    this.preIcon,
    required this.hint,
    this.heigth = 60,
    required this.textFormatter,
    required this.keyBordType,
    this.validator,
    this.errorText,
    this.focusNode,
    this.autoFocus = false,
    this.isObsecure = false,
    this.onSubmitted,
    this.isEnabled = true,
    this.isBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth,
      child: TextFormField(
        onFieldSubmitted: (value) {
          onSubmitted == null ? null : onSubmitted!(value);
        },
        obscureText: isObsecure,
        focusNode: focusNode,
        autofocus: autoFocus,
        inputFormatters: textFormatter,
        validator: validator,
        keyboardType: keyBordType,
        controller: textController,
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontSize: 16, color: AppColors.black, fontWeight: FontWeight.w400),
        onChanged: (value) {
          onChanged(value);
        },
        decoration: InputDecoration(
          focusColor: AppColors.white,
          fillColor: AppColors.white,
          filled: true,
          //add prefix icon
          prefixIcon: preIcon == null
              ? null
              : Icon(
                  preIcon,
                  color: AppColors.gray,
                ),
          // errorText: "Error",
          border: OutlineInputBorder(
            borderSide: isBorder ? BorderSide() : BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isBorder ? AppColors.black : AppColors.white,
                width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorText: errorText,
          errorStyle: TextStyle(color: Colors.red),
          errorBorder: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            decoration: TextDecoration.none,
            color: AppColors.gray,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        enabled: isEnabled,
      ),
    );
  }
}
