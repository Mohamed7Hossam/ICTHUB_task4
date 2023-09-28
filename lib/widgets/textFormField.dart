import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)validator;
  Widget? prefixIcon;

   MyFormField({super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey[300],
      ),
      child: TextFormField(
        controller: controller,
        decoration:  InputDecoration(
            contentPadding: const EdgeInsets.symmetric (
              horizontal: 30,
              vertical: 10,
            ),
            fillColor: Colors.white,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            hintText: hintText,
            prefixIcon: prefixIcon,
        ),
        validator:validator,
        // decoration: const InputDecoration(
        //   hintText: 'email',
        //   prefixIcon: Icon(
        //       Icons.email_outlined
        //   ),
        //   suffixIcon: Icon(Icons.email_outlined),
        //   label:Text('email'),
        //   filled: true,
        //   fillColor: Colors.greenAccent,
        // ),
      ),
    );
  }
}
