import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  TextEditingController controller = TextEditingController();
  late FocusNode myFocusNode;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
    controller.addListener(printValue);
  }

  void printValue() {
    print(controller.text);
  }

  void dispose() {
    super.dispose();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                autofocus: true,
                controller: controller,
                decoration: InputDecoration(hintText: "Enter Email:"),
                validator: (String? value) {
                  if (value!.isEmpty || value == null) {
                    return "Please Enter an email";
                  }
                  return null;
                },
              ),
              TextFormField(
                focusNode: myFocusNode,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      myFocusNode.requestFocus();
                      if (formKey.currentState!.validate()) {}
                    },
                    child: Text("Submit")),
              )
            ],
          )),
    );
  }
}
