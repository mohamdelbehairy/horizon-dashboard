import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class LoginViewTextField extends StatelessWidget {
  const LoginViewTextField(
      {super.key, required this.title, required this.hintText});
  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title,
                style: Styles.medium14(context)
                    .copyWith(color: const Color(0xff2B3674))),
            Text('*',
                style: Styles.medium14(context)
                    .copyWith(color: const Color(0xff4318FF))),
          ],
        ),
        const SizedBox(height: 6),
        SizedBox(
          // height: 50,
          width: 410,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                border: loginTextFieldBorder(),
                focusedBorder: loginTextFieldBorder(),
                enabledBorder: loginTextFieldBorder(),
                hintText: hintText,
                hintStyle: Styles.regular14(context)
                    .copyWith(color: const Color(0xffA3AED0))),
          ),
        )
      ],
    );
  }

  OutlineInputBorder loginTextFieldBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE0E5F2)),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
