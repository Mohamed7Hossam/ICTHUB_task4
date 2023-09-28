import 'package:f6/widgets/textFormField.dart';
import 'package:flutter/material.dart';

import 'sigup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    print('validate');
                  } else {
                    print('not        validate');
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>const SignupScreen(),
                      ));
                },
                child: const Text(
                  'you dont have an account',
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
