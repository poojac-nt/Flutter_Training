import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice/widgets/input/custom_form_field.dart';
import 'package:flutter_practice/widgets/input/regex_extenstion_class.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomFormField(
                    hintText: "Name",
                    controller: controller,
                    textInputFormetter: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z] +|\s'))
                    ],
                    validator: (val) {
                      if (formKey.currentState!.validate() == false)
                        return "Enter valid name";
                    },
                  ),
                  CustomFormField(
                    hintText: "Enter your email",
                    validator: (val) {
                      if (val!.isValidEmail) return "Enter valid email";
                    },
                  ),
                  CustomFormField(
                    hintText: "Enter your phone number",
                    textInputFormetter: [
                      FilteringTextInputFormatter.allow(RegExp(r'^[0-9]'))
                    ],
                    validator: (val) {
                      if (val!.isValidEmail) return "Enter valid phone number";
                    },
                  ),
                  CustomFormField(
                    hintText: "Enter your password",
                    validator: (val) {
                      if (val!.isValidEmail) return "Enter valid password";
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("Succes")));
                        }
                        return;
                      },
                      child: Text("Submit"))
                ],
              ))),
    );
  }
}
