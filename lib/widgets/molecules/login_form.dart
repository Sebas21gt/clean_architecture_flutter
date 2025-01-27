import 'package:app_test/widgets/atoms/custom_button.dart';
import 'package:app_test/widgets/atoms/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Presioname',
          onPressed: () {},
          icon: Icons.ac_unit_rounded,
          iconAtStart: false,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: 'Escribe algo',
          onChanged: (value) {},
          prefixIcon: Icons.ac_unit_rounded,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove_red_eye_rounded),
          ),
        ),
      ],
    );
  }
}
