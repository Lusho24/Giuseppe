import 'package:app_movil_giuseppe/utils/helpers/validators/form_validators.dart';
import 'package:app_movil_giuseppe/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum FormFieldType{
  email, password, name, phone
}

class CustomTextFormField extends StatelessWidget {
  final FormFieldType formFieldType;
  final String hintText;
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    required this.formFieldType,
    required this.hintText,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child:  TextFormField(
        controller: controller,
        keyboardType: getKeyboardType(formFieldType: formFieldType),
        obscureText: formFieldType == FormFieldType.password ? true : false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.hintTextColor),
          errorMaxLines: 2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.primaryVariantColor,
              width: 1.0,
            ),
          ),
        ),
        validator: (value){
          switch (formFieldType){
            case FormFieldType.password:
              return FormValidators.validatePassword(password: value ?? '');
            case FormFieldType.email:
              return FormValidators.validatePassword(password: value ?? '');
            case FormFieldType.name:
              return FormValidators.validateUserName(name: value ?? '');
            case FormFieldType.phone:
              return FormValidators.validatePassword(password: value ?? '');
          }
        },
      ),
    );
  }

  TextInputType? getKeyboardType({ required FormFieldType formFieldType }) {
    switch (formFieldType) {
      case FormFieldType.email:
        return TextInputType.emailAddress;
      case FormFieldType.password:
        return TextInputType.visiblePassword;
      case FormFieldType.name:
        return TextInputType.name;
      case FormFieldType.phone:
        return TextInputType.phone;
      default:
        return TextInputType.text;
    }
  }
}
