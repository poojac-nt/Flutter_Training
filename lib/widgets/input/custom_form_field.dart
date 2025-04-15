import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField(
      {super.key,
      required this.hintText,
      this.validator,
      this.textInputFormetter,
      this.controller});

  final String hintText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? textInputFormetter;
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      inputFormatters: textInputFormetter,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
