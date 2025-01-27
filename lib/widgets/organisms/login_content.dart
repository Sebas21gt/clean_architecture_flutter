import 'package:app_test/widgets/atoms/custom_button.dart';
import 'package:app_test/widgets/molecules/login_form.dart';
import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginForm(),
        CustomButton(text: "Ingresar", onPressed: () {}),
      ],
    );
  }
}
