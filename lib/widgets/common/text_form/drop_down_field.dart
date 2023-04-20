import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/themes/colors.dart';

class DropdownFormField extends StatelessWidget {
  final Function(String?)? onChanged;
  final IconData preIcon;
  final String text;
  final String selectedValue;
  final double heigth;
  final String? errorText;
  final List<String> dataList;
  const DropdownFormField(
      {required this.onChanged,
      required this.preIcon,
      required this.text,
      required this.selectedValue,
      this.heigth = 60,
      this.errorText,
      required this.dataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth,
      child: InputDecorator(
        decoration: InputDecoration(
          focusColor: AppColors.white,
          fillColor: AppColors.white,
          filled: true,
          prefixIcon: Icon(
            preIcon,
            color: AppColors.gray,
          ),
          // hintText: text,
          // hintStyle: TextStyle(
          //   decoration: TextDecoration.none,
          //   color: AppColors.gray,
          //   fontSize: 14,
          //   fontWeight: FontWeight.w400,
          // ),
          //errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.black, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            value: selectedValue,
            isDense: true,
            onChanged: onChanged,
            items: dataList.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 16,
                        color: AppColors.gray,
                        fontWeight: FontWeight.w400)),
              );
            }).toList(),
            hint: Text(text,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 16,
                    color: AppColors.gray,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
