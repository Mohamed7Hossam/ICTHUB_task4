import 'package:f6/widgets/textFormField.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                  'Sign up',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              MyFormField(
                controller:emailC,
                validator:(value)
                {
                  if(value!.length<9)
                  {
                    return 'email; must be 9';
                  }
                  if(value.contains('z'))
                  {
                    return 'error z';
                  }
                },
                hintText: 'email',
              ),
              MyFormField(
                controller:passwordC,
                validator:(value) {
                  if(value!.length<6)
                  {
                    return 'email; must be 6';
                  }
                },
                hintText: 'password',
              ),
              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                  } else {}
                },
                child: const Text(
                  'signup',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
