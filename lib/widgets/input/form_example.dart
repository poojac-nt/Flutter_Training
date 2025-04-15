import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Enter Email:",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.deepPurple, width: 2)),
                ),
                validator: (String? value) {
                  if (value!.isEmpty || value == null) {
                    return "Please Enter an email";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                focusNode: myFocusNode,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textCapitalization: TextCapitalization.characters,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey)),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                    hintStyle: TextStyle(
                        color: Colors.blue, fontStyle: FontStyle.italic)),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
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
