import 'package:flutter/material.dart';
import 'package:horizon/core/widgets/custom_text_field.dart';

import 'text_field_listview.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 4),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: const Row(
          children: [
            Expanded(child: CustomTextField()),
            Expanded(child: TextFieldListView()),
          ],
        ),
      ),
    );
  }
}
