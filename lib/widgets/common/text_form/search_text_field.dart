import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/themes/colors.dart';

class SearchFormField extends StatelessWidget {
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
  final bool autoFocus, isObsecure;

  const SearchFormField({
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
              fontSize: 16,
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
        onChanged: (value) {
          onChanged(value);
        },
        decoration: InputDecoration(
          focusColor: AppColors.white,
          fillColor: AppColors.white,
          filled: true,
          prefixIcon: preIcon == null
              ? null
              : Icon(
                  preIcon,
                  color: AppColors.gray,
                ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.TRANSPARENT,
              width: 0.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.TRANSPARENT, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.TRANSPARENT, width: 1.0),
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
      ),
    );
  }
}
